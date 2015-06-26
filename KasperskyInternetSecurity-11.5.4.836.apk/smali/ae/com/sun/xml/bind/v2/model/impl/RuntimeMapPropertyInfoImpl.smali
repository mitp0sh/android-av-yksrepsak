.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;
.source "RuntimeMapPropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeMapPropertyInfo;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 1
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
    .line 60
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 61
    check-cast p2, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;

    .end local p2    # "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$RuntimePropertySeed;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 62
    return-void
.end method


# virtual methods
.method public elementOnlyContent()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    return-object v0
.end method

.method public bridge synthetic getIndividualType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic getKeyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;->getKeyType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getKeyType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getKeyType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getRawType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic getValueType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;->getValueType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->getValueType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeMapPropertyInfoImpl;->ref()Ljava/util/List;

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
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/MapPropertyInfoImpl;->ref()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
