.class Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;
.source "RuntimeAttributePropertyInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;"
    }
.end annotation


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V
    .locals 0
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
    .line 59
    .local p2, "seed":Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;, "Lae/com/sun/xml/bind/v2/model/impl/PropertySeed<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertySeed;)V

    .line 60
    return-void
.end method


# virtual methods
.method public elementOnlyContent()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getIndividualType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->getIndividualType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->getRawType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public bridge synthetic getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;->getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method public bridge synthetic getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public link()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 80
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->link()V

    .line 81
    return-void
.end method

.method public bridge synthetic ref()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeAttributePropertyInfoImpl;->ref()Ljava/util/List;

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
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/AttributePropertyInfoImpl;->ref()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
