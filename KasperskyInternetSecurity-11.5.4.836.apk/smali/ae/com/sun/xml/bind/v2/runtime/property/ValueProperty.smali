.class public final Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "ValueProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;*>;"
        }
    .end annotation
.end field

.field private final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
            "<TBeanT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 81
    invoke-static {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->get(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 82
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeValuePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 83
    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 4
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
    .line 99
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;->TEXT_HANDLER:Ljavax/xml/namespace/QName;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-direct {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public bridge synthetic getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
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
    .line 112
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->VALUE:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public hasSerializeURIAction()Z
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->useNamespace()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiddenByOverride()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
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
    .line 108
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public final serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 2
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
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->hasValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :cond_0
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
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 92
    return-void
.end method

.method public bridge synthetic setHiddenByOverride(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->setHiddenByOverride(Z)V

    return-void
.end method

.method public bridge synthetic wrapUp()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ValueProperty<TBeanT;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;->wrapUp()V

    return-void
.end method
