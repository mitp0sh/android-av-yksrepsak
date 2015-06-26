.class public abstract Lae/com/sun/xml/bind/WhiteSpaceProcessor;
.super Ljava/lang/Object;
.source "WhiteSpaceProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0x20

    .line 130
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 135
    .local v4, "len":I
    const/4 v6, 0x0

    .line 136
    .local v6, "s":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 137
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    :cond_0
    if-ne v6, v4, :cond_2

    .line 178
    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_1
    return-object p0

    .line 139
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 148
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v5, "result":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_4

    .line 151
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 152
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .end local v2    # "i":I
    :cond_4
    const/4 v3, 0x1

    .line 157
    .local v3, "inStripMode":Z
    add-int/lit8 v2, v6, 0x1

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_7

    .line 158
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 159
    .local v1, "ch":C
    invoke-static {v1}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v0

    .line 160
    .local v0, "b":Z
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 157
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 163
    :cond_5
    move v3, v0

    .line 164
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 167
    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 171
    .end local v0    # "b":Z
    .end local v1    # "ch":C
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 172
    if-lez v4, :cond_8

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_8

    .line 173
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_8
    move-object p0, v5

    .line 178
    goto :goto_1
.end method

.method public static collapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->collapse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isWhiteSpace(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 195
    if-le p0, v2, :cond_1

    .line 198
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

.method public static final isWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 186
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 188
    :goto_1
    return v1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected static final isWhiteSpaceExceptSpace(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 208
    const/16 v1, 0x20

    if-lt p0, v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa

    if-eq p0, v1, :cond_2

    const/16 v1, 0xd

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static replace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 76
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    move v2, v1

    .line 79
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpaceExceptSpace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 82
    :cond_0
    if-gez v2, :cond_1

    move v1, v2

    .line 95
    .end local v2    # "i":I
    .end local p0    # "text":Ljava/lang/CharSequence;
    .restart local v1    # "i":I
    :goto_1
    return-object p0

    .line 88
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .local v0, "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 91
    :goto_2
    if-ltz v1, :cond_3

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpaceExceptSpace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 91
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public static replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->replace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 104
    .local v1, "len":I
    const/4 v2, 0x0

    .line 106
    .local v2, "start":I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .line 111
    .local v0, "end":I
    :goto_1
    if-le v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 114
    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_2

    .line 117
    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_2
    return-object p0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2
.end method
