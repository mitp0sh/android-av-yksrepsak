.class Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private actualTypeArguments:[Ljava/lang/reflect/Type;

.field private ownerType:Ljava/lang/reflect/Type;

.field private rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1
    .param p2, "actualTypeArguments"    # [Ljava/lang/reflect/Type;
    .param p3, "ownerType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 62
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    .line 63
    if-eqz p3, :cond_0

    .line 64
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 68
    :goto_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->validateConstructorArguments()V

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method private validateConstructorArguments()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 74
    .local v0, "formals":[Ljava/lang/reflect/TypeVariable;
    array-length v2, v0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 75
    new-instance v2, Ljava/lang/reflect/MalformedParameterizedTypeException;

    invoke-direct {v2}, Ljava/lang/reflect/MalformedParameterizedTypeException;-><init>()V

    throw v2

    .line 77
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_5

    move-object v0, p1

    .line 106
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 108
    .local v0, "that":Ljava/lang/reflect/ParameterizedType;
    if-ne p0, v0, :cond_1

    .line 144
    .end local v0    # "that":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    :goto_0
    return v3

    .line 111
    .restart local v0    # "that":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 112
    .local v1, "thatOwner":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 134
    .local v2, "thatRawType":Ljava/lang/reflect/Type;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v5, :cond_3

    if-nez v1, :cond_2

    :goto_1
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v5, :cond_4

    if-nez v2, :cond_2

    :goto_2
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .end local v0    # "that":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "thatOwner":Ljava/lang/reflect/Type;
    .end local v2    # "thatRawType":Ljava/lang/reflect/Type;
    :cond_5
    move v3, v4

    .line 144
    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v6, :cond_3

    .line 158
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    instance-of v6, v6, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 159
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_0
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    instance-of v6, v6, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;

    if-eqz v6, :cond_2

    .line 168
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    check-cast v6, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;

    iget-object v6, v6, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "$"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    array-length v6, v6

    if-lez v6, :cond_6

    .line 177
    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/4 v1, 0x1

    .line 179
    .local v1, "first":Z
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v5, v0, v2

    .line 180
    .local v5, "t":Ljava/lang/reflect/Type;
    if-nez v1, :cond_0

    .line 181
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_4

    .line 183
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_3
    const/4 v1, 0x0

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 161
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "first":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :cond_2
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    :cond_3
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;->rawType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    .restart local v1    # "first":Z
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "t":Ljava/lang/reflect/Type;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 188
    .end local v5    # "t":Ljava/lang/reflect/Type;
    :cond_5
    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "first":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
