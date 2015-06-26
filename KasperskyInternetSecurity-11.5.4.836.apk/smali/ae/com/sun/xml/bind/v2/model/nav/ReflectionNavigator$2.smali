.class final Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;
.super Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
.source "ReflectionNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor",
        "<",
        "Ljava/lang/reflect/Type;",
        "Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p2, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->onClass(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onClass(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;
    .locals 0
    .param p1, "c"    # Ljava/lang/Class;
    .param p2, "args"    # Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .prologue
    .line 188
    return-object p1
.end method

.method public bridge synthetic onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p2, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->onGenericArray(Ljava/lang/reflect/GenericArrayType;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onGenericArray(Ljava/lang/reflect/GenericArrayType;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "g"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "types"    # Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .prologue
    .line 215
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 216
    .local v0, "c":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 220
    .end local p1    # "g":Ljava/lang/reflect/GenericArrayType;
    :goto_0
    return-object p1

    .restart local p1    # "g":Ljava/lang/reflect/GenericArrayType;
    :cond_0
    new-instance p1, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;

    .end local p1    # "g":Ljava/lang/reflect/GenericArrayType;
    invoke-direct {p1, v0}, Lae/com/sun/xml/bind/v2/model/nav/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method public bridge synthetic onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p2, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->onParameterizdType(Ljava/lang/reflect/ParameterizedType;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onParameterizdType(Ljava/lang/reflect/ParameterizedType;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "p"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "args"    # Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 192
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 194
    .local v3, "params":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 195
    .local v0, "different":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 196
    aget-object v4, v3, v1

    .line 197
    .local v4, "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v4, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    aput-object v5, v3, v1

    .line 198
    aget-object v5, v3, v1

    if-eq v4, v5, :cond_0

    move v5, v6

    :goto_1
    or-int/2addr v0, v5

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 198
    goto :goto_1

    .line 201
    .end local v4    # "t":Ljava/lang/reflect/Type;
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 202
    .local v2, "newOwner":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {p0, v2, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "newOwner":Ljava/lang/reflect/Type;
    check-cast v2, Ljava/lang/reflect/Type;

    .line 205
    .restart local v2    # "newOwner":Ljava/lang/reflect/Type;
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    if-eq v5, v2, :cond_3

    :goto_2
    or-int/2addr v0, v6

    .line 207
    if-nez v0, :cond_4

    .line 211
    .end local p1    # "p":Ljava/lang/reflect/ParameterizedType;
    :goto_3
    return-object p1

    .restart local p1    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_3
    move v6, v7

    .line 205
    goto :goto_2

    .line 211
    :cond_4
    new-instance v6, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-direct {v6, v5, v3, v2}, Lae/com/sun/xml/bind/v2/model/nav/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object p1, v6

    goto :goto_3
.end method

.method public bridge synthetic onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/TypeVariable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p2, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->onVariable(Ljava/lang/reflect/TypeVariable;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onVariable(Ljava/lang/reflect/TypeVariable;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "v"    # Ljava/lang/reflect/TypeVariable;
    .param p2, "types"    # Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .prologue
    .line 224
    invoke-virtual {p2, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;->replace(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/WildcardType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 185
    check-cast p2, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->onWildcard(Ljava/lang/reflect/WildcardType;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onWildcard(Ljava/lang/reflect/WildcardType;Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "w"    # Ljava/lang/reflect/WildcardType;
    .param p2, "types"    # Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 231
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 232
    .local v2, "lb":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 233
    .local v4, "ub":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 235
    .local v0, "diff":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 236
    aget-object v3, v2, v1

    .line 237
    .local v3, "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    aput-object v5, v2, v1

    .line 238
    aget-object v5, v2, v1

    if-eq v3, v5, :cond_0

    move v5, v6

    :goto_1
    or-int/2addr v0, v5

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 238
    goto :goto_1

    .line 241
    .end local v3    # "t":Ljava/lang/reflect/Type;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 242
    aget-object v3, v4, v1

    .line 243
    .restart local v3    # "t":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$2;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    aput-object v5, v4, v1

    .line 244
    aget-object v5, v4, v1

    if-eq v3, v5, :cond_2

    move v5, v6

    :goto_3
    or-int/2addr v0, v5

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v5, v7

    .line 244
    goto :goto_3

    .line 247
    .end local v3    # "t":Ljava/lang/reflect/Type;
    :cond_3
    if-nez v0, :cond_4

    .line 251
    .end local p1    # "w":Ljava/lang/reflect/WildcardType;
    :goto_4
    return-object p1

    .restart local p1    # "w":Ljava/lang/reflect/WildcardType;
    :cond_4
    new-instance p1, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;

    .end local p1    # "w":Ljava/lang/reflect/WildcardType;
    invoke-direct {p1, v2, v4}, Lae/com/sun/xml/bind/v2/model/nav/WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_4
.end method
