.class final Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;
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
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;-><init>()V

    return-void
.end method

.method private bind(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericDeclaration;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "t"    # Ljava/lang/reflect/Type;
    .param p2, "decl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p3, "args"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 157
    # getter for: Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->binder:Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;
    invoke-static {}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->access$000()Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;

    move-result-object v0

    new-instance v1, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$BinderArg;-><init>(Ljava/lang/reflect/GenericDeclaration;[Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->onClass(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onClass(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .param p1, "c"    # Ljava/lang/Class;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 86
    if-ne p2, p1, :cond_1

    move-object v4, p2

    .line 107
    :cond_0
    :goto_0
    return-object v4

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 93
    .local v5, "sc":Ljava/lang/reflect/Type;
    if-eqz v5, :cond_2

    .line 94
    invoke-virtual {p0, v5, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 95
    .local v4, "r":Ljava/lang/reflect/Type;
    if-nez v4, :cond_0

    .line 100
    .end local v4    # "r":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 101
    .local v1, "i":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 102
    .restart local v4    # "r":Ljava/lang/reflect/Type;
    if-nez v4, :cond_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "i":Ljava/lang/reflect/Type;
    .end local v4    # "r":Ljava/lang/reflect/Type;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "g"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .param p1, "p"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 111
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 112
    .local v5, "raw":Ljava/lang/Class;
    if-ne v5, p2, :cond_1

    move-object v4, p1

    .line 130
    :cond_0
    :goto_0
    return-object v4

    .line 117
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 118
    .local v4, "r":Ljava/lang/reflect/Type;
    if-eqz v4, :cond_2

    .line 119
    invoke-direct {p0, v4, v5, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->bind(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericDeclaration;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Ljava/lang/reflect/Type;
    check-cast v4, Ljava/lang/reflect/Type;

    .line 121
    .restart local v4    # "r":Ljava/lang/reflect/Type;
    :cond_2
    if-nez v4, :cond_0

    .line 124
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 125
    .local v1, "i":Ljava/lang/reflect/Type;
    invoke-direct {p0, v1, v5, p1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->bind(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericDeclaration;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Ljava/lang/reflect/Type;
    check-cast v4, Ljava/lang/reflect/Type;

    .line 126
    .restart local v4    # "r":Ljava/lang/reflect/Type;
    if-nez v4, :cond_0

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .end local v1    # "i":Ljava/lang/reflect/Type;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/TypeVariable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "v"    # Ljava/lang/reflect/TypeVariable;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 140
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/WildcardType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$1;->onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "w"    # Ljava/lang/reflect/WildcardType;
    .param p2, "sup"    # Ljava/lang/Class;

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method
