.class public Lae/com/sun/xml/bind/v2/util/EditDistance;
.super Ljava/lang/Object;
.source "EditDistance.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private back:[I

.field private cost:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->a:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->b:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->back:[I

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    aput v0, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method private calc()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 130
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 131
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/util/EditDistance;->flip()V

    .line 132
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    add-int/lit8 v5, v1, 0x1

    aput v5, v4, v3

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 134
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 135
    .local v2, "match":I
    :goto_2
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->back:[I

    aget v6, v6, v0

    add-int/2addr v6, v2

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->back:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lae/com/sun/xml/bind/v2/util/EditDistance;->min(III)I

    move-result v6

    aput v6, v4, v5

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v2    # "match":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_2

    .line 130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method public static editDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Lae/com/sun/xml/bind/v2/util/EditDistance;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/util/EditDistance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/EditDistance;->calc()I

    move-result v0

    return v0
.end method

.method public static findNearest(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "group":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const v0, 0x7fffffff

    .line 86
    .local v0, "c":I
    const/4 v3, 0x0

    .line 88
    .local v3, "r":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "s":Ljava/lang/String;
    invoke-static {p0, v4}, Lae/com/sun/xml/bind/v2/util/EditDistance;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "ed":I
    if-le v0, v1, :cond_0

    .line 91
    move v0, v1

    .line 92
    move-object v3, v4

    goto :goto_0

    .line 95
    .end local v1    # "ed":I
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static findNearest(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "group"    # [Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/v2/util/EditDistance;->findNearest(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flip()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    .line 121
    .local v0, "t":[I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->back:[I

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->cost:[I

    .line 122
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/EditDistance;->back:[I

    .line 123
    return-void
.end method

.method private min(III)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 126
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
