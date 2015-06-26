.class public Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;
.super Lae/com/sun/xml/bind/api/impl/NameUtil;
.source "NameConverter.java"

# interfaces
.implements Lae/com/sun/xml/bind/api/impl/NameConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/api/impl/NameConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lae/com/sun/xml/bind/api/impl/NameUtil;-><init>()V

    return-void
.end method

.method private static combine(Ljava/util/List;C)Ljava/lang/String;
    .locals 3
    .param p0, "r"    # Ljava/util/List;
    .param p1, "sep"    # C

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static removeIllegalIdentifierChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 208
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v2, "newToken":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 210
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 212
    .local v0, "c":C
    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 223
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static reverse(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 241
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    :cond_0
    return-object v1
.end method

.method private static tokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v1, "tokens":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toWordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toMixedCaseName(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toConstantName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toConstantName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toConstantName(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toConstantName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "nsUri"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3a

    const/16 v12, 0x2e

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 141
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 142
    .local v2, "idx":I
    const-string v5, ""

    .line 143
    .local v5, "scheme":Ljava/lang/String;
    if-ltz v2, :cond_1

    .line 144
    invoke-virtual {p1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 145
    const-string v8, "http"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "urn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 146
    :cond_0
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    :cond_1
    const-string v8, "#"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 151
    if-ltz v2, :cond_2

    .line 152
    invoke-virtual {p1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_2
    const-string v8, "/: "

    invoke-static {p1, v8}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->tokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 156
    .local v7, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 157
    const/4 v8, 0x0

    .line 203
    :goto_0
    return-object v8

    .line 161
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 165
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    .local v3, "lastToken":Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 167
    if-lez v2, :cond_4

    .line 168
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v3    # "lastToken":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 176
    if-ltz v2, :cond_5

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_5
    const-string v8, "urn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, ".-"

    :goto_1
    invoke-static {v0, v8}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->tokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->reverse(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 178
    .local v4, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "www"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 180
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    :cond_6
    invoke-virtual {v7, v11, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 185
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_9

    .line 191
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 192
    .local v6, "token":Ljava/lang/String;
    invoke-static {v6}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->removeIllegalIdentifierChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 177
    .end local v1    # "i":I
    .end local v4    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "token":Ljava/lang/String;
    :cond_8
    const-string v8, "."

    goto :goto_1

    .line 203
    .restart local v1    # "i":I
    .restart local v4    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-static {v7, v12}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->combine(Ljava/util/List;C)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public toPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v0, "Clazz"

    .line 126
    :cond_0
    return-object v0
.end method

.method public toVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toWordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toMixedCaseName(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toWordList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toWordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
