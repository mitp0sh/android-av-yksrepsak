.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;
.source "RuntimeReferencePropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeReferencePropertyInfo;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
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
    .line 61
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 62
    check-cast p2, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    .end local p2    # "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 63
    .local v0, "rawAcc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->isCollection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->adapt(Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 67
    :cond_0
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 68
    return-void
.end method


# virtual methods
.method public elementOnlyContent()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->isMixed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method public getElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getElements()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndividualType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->getRawType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeReferencePropertyInfoImpl;->ref()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public ref()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ReferencePropertyInfoImpl;->ref()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
