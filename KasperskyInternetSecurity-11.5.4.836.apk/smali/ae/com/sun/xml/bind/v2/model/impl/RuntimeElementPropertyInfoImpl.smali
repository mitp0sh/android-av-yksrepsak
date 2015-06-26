.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;
.source "RuntimeElementPropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 2
    .param p1, "classInfo"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;",
            "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 64
    check-cast p2, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    .end local p2    # "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 65
    .local v0, "rawAcc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->isCollection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->adapt(Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 69
    :cond_0
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 70
    return-void
.end method


# virtual methods
.method protected createTypeRef(Ljavax/xml/namespace/QName;Ljava/lang/reflect/Type;ZLjava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;
    .locals 6
    .param p1, "name"    # Ljavax/xml/namespace/QName;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "isNillable"    # Z
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;Ljavax/xml/namespace/QName;Ljava/lang/reflect/Type;ZLjava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeRef(Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;
    .locals 1
    .param p1, "x0"    # Ljavax/xml/namespace/QName;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    check-cast p2, Ljava/lang/reflect/Type;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->createTypeRef(Ljavax/xml/namespace/QName;Ljava/lang/reflect/Type;ZLjava/lang/String;)Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;

    move-result-object v0

    return-object v0
.end method

.method public elementOnlyContent()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method public bridge synthetic getIndividualType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getRawType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->getTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;->ref()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ref()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;->ref()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
