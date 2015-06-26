.class abstract Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.super Ljava/lang/Object;
.source "PropertyImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/property/Property;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/property/Property",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field protected final fieldName:Ljava/lang/String;

.field private hiddenByOverride:Z

.field private propertyInfo:Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->propertyInfo:Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->hiddenByOverride:Z

    .line 67
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->fieldName:Ljava/lang/String;

    .line 68
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->retainPropertyInfo:Z

    if-eqz v0, :cond_0

    .line 69
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->propertyInfo:Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 89
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->propertyInfo:Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    return-object v0
.end method

.method public hasSerializeURIAction()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isHiddenByOverride()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->hiddenByOverride:Z

    return v0
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 0
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "outerPeer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    return-void
.end method

.method public serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    return-void
.end method

.method public setHiddenByOverride(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 99
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->hiddenByOverride:Z

    .line 100
    return-void
.end method

.method public wrapUp()V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;, "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl<TBeanT;>;"
    return-void
.end method
