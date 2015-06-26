.class final Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;
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
        "Ljava/lang/Class;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/nav/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onClass(Ljava/lang/Class;Ljava/lang/Void;)Ljava/lang/Class;
    .locals 0
    .param p1, "c"    # Ljava/lang/Class;
    .param p2, "_"    # Ljava/lang/Void;

    .prologue
    .line 361
    return-object p1
.end method

.method public bridge synthetic onClass(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->onClass(Ljava/lang/Class;Ljava/lang/Void;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Void;)Ljava/lang/Class;
    .locals 2
    .param p1, "g"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "_"    # Ljava/lang/Void;

    .prologue
    .line 370
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/GenericArrayType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->onGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Void;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Void;)Ljava/lang/Class;
    .locals 2
    .param p1, "p"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "_"    # Ljava/lang/Void;

    .prologue
    .line 366
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->onParameterizdType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Void;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Void;)Ljava/lang/Class;
    .locals 2
    .param p1, "v"    # Ljava/lang/reflect/TypeVariable;
    .param p2, "_"    # Ljava/lang/Void;

    .prologue
    .line 376
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/TypeVariable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->onVariable(Ljava/lang/reflect/TypeVariable;Ljava/lang/Void;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Void;)Ljava/lang/Class;
    .locals 2
    .param p1, "w"    # Ljava/lang/reflect/WildcardType;
    .param p2, "_"    # Ljava/lang/Void;

    .prologue
    .line 380
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->visit(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/reflect/WildcardType;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator$3;->onWildcard(Ljava/lang/reflect/WildcardType;Ljava/lang/Void;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
