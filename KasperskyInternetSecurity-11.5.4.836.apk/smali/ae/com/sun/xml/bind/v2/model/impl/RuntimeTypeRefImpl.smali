.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;
.source "RuntimeTypeRefImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;Ljavax/xml/namespace/QName;Ljava/lang/reflect/Type;ZLjava/lang/String;)V
    .locals 0
    .param p1, "elementPropertyInfo"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementPropertyInfoImpl;
    .param p2, "elementName"    # Ljavax/xml/namespace/QName;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "isNillable"    # Z
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;Ljavax/xml/namespace/QName;Ljava/lang/Object;ZLjava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;->getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/ElementPropertyInfoImpl;

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    return-object v0
.end method

.method public bridge synthetic getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeTypeRefImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeRefImpl;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createTransducer(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    return-object v0
.end method
