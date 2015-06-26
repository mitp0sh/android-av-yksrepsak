.class public Lae/javax/xml/bind/annotation/adapters/CollapsedStringAdapter;
.super Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
.source "CollapsedStringAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method

.method protected static isWhiteSpace(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 129
    if-le p0, v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd

    if-eq p0, v1, :cond_2

    if-ne p0, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/adapters/CollapsedStringAdapter;->marshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 121
    return-object p1
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/javax/xml/bind/annotation/adapters/CollapsedStringAdapter;->unmarshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x20

    .line 62
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 112
    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 64
    .restart local p1    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 69
    .local v4, "len":I
    const/4 v6, 0x0

    .line 70
    .local v6, "s":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 71
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lae/javax/xml/bind/annotation/adapters/CollapsedStringAdapter;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 75
    :cond_2
    if-eq v6, v4, :cond_0

    .line 82
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    .local v5, "result":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_5

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_4

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 73
    .end local v2    # "i":I
    .end local v5    # "result":Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    .restart local v2    # "i":I
    .restart local v5    # "result":Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    .end local v2    # "i":I
    :cond_5
    const/4 v3, 0x1

    .line 91
    .local v3, "inStripMode":Z
    add-int/lit8 v2, v6, 0x1

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_8

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 93
    .local v1, "ch":C
    invoke-static {v1}, Lae/javax/xml/bind/annotation/adapters/CollapsedStringAdapter;->isWhiteSpace(C)Z

    move-result v0

    .line 94
    .local v0, "b":Z
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 91
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 97
    :cond_6
    move v3, v0

    .line 98
    if-eqz v3, :cond_7

    .line 99
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 101
    :cond_7
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 105
    .end local v0    # "b":Z
    .end local v1    # "ch":C
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 106
    if-lez v4, :cond_9

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_9

    .line 107
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 112
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
