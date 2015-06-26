.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;
.source "RuntimeTypeInfoSetImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->LEAVES:Ljava/util/Map;

    invoke-direct {p0, v0, p1, v1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;-><init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Ljava/util/Map;)V

    .line 66
    return-void
.end method


# virtual methods
.method public arrays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeArrayInfoImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->arrays()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public beans()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->beans()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public builtins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->builtins()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createAnyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->createAnyType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method protected createAnyType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAnyTypeImpl;->theInstance:Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public enums()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeEnumLeafInfoImpl",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->enums()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllElements()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getAllElements()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public bridge synthetic getClassInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getClassInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getClassInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public bridge synthetic getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getElementInfo(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getElementInfo(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public getElementInfo(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;
    .locals 1
    .param p1, "scope"    # Ljava/lang/Class;
    .param p2, "name"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    return-object v0
.end method

.method public bridge synthetic getElementInfo(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getElementInfo(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public getElementMappings(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .param p1, "scope"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementMappings(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getElementMappings(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getElementMappings(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNavigator()Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    move-result-object v0

    return-object v0
.end method

.method public getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getNavigator()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    return-object v0
.end method

.method public bridge synthetic getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Ljava/lang/reflect/Type;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeInfoSetImpl;->getTypeInfo(Ljava/lang/reflect/Type;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInfo(Ljava/lang/reflect/Type;)Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method
