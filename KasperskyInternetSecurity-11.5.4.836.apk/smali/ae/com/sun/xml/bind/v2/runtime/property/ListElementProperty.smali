.class final Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;
.source "ListElementProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ListT:Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty",
        "<TBeanT;T",
        "ListT;",
        "TItemT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

.field private final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
            "<TBeanT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V
    .locals 5
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty<TBeanT;TListT;TItemT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 82
    sget-boolean v2, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->isValueList()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 83
    :cond_0
    sget-boolean v2, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 84
    :cond_1
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .line 86
    .local v0, "ref":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 89
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v1

    .line 91
    .local v1, "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-direct {v2, v1, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 92
    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 4
    .param p1, "chain"    # Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty<TBeanT;TListT;TItemT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-direct {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v0, v1}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 122
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty<TBeanT;TListT;TItemT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty<TBeanT;TListT;TItemT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 4
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
    .line 104
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty<TBeanT;TListT;TItemT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "list":Ljava/lang/Object;, "TListT;"
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->useNamespace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 110
    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 112
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, p2, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ListElementProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, p1, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
