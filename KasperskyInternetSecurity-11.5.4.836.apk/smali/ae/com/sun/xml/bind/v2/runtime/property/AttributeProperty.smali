.class public final Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "AttributeProperty.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl",
        "<TBeanT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field public final attName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field public final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
            "<TBeanT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;)V
    .locals 2
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;

    .prologue
    .line 89
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 90
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createAttributeName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 91
    invoke-static {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->get(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 92
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeAttributePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 93
    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 1
    .param p1, "chainElem"    # Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public compareTo(Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;)I
    .locals 2
    .param p1, "that"    # Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .prologue
    .line 132
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/Name;->compareTo(Lae/com/sun/xml/bind/v2/runtime/Name;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->compareTo(Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ATTRIBUTE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public hasSerializeURIAction()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->useNamespace()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiddenByOverride()Z
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->isHiddenByOverride()Z

    move-result v0

    return v0
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 3
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
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    .local v0, "value":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method

.method public bridge synthetic serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 1
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
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 108
    return-void
.end method

.method public bridge synthetic setHiddenByOverride(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->setHiddenByOverride(Z)V

    return-void
.end method

.method public bridge synthetic wrapUp()V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty<TBeanT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->wrapUp()V

    return-void
.end method
