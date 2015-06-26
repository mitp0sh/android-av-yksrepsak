.class final Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "SingleElementLeafProperty.java"


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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field private final defaultValue:Ljava/lang/String;

.field private final improvedXsiTypeHandling:Z

.field private final nillable:Z

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
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V
    .locals 3
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .prologue
    .line 81
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 82
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    .line 83
    .local v0, "ref":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 84
    sget-boolean v1, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 85
    :cond_0
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->isNillable()Z

    move-result v1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->nillable:Z

    .line 86
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->defaultValue:Ljava/lang/String;

    .line 87
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 89
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->get(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 90
    sget-boolean v1, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 92
    :cond_1
    iget-boolean v1, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->improvedXsiTypeHandling:Z

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->improvedXsiTypeHandling:Z

    .line 93
    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 5
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
    .line 139
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-direct {v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V

    .line 140
    .local v0, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 141
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->defaultValue:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Ljava/lang/String;)V

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .local v1, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v0, v1

    .line 142
    .end local v1    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_0
    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->nillable:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-boolean v2, v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->allNillable:Z

    if-eqz v2, :cond_2

    .line 143
    :cond_1
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v1, v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v1    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v0, v1

    .line 146
    .end local v1    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_2
    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->improvedXsiTypeHandling:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->nillable:Z

    if-nez v2, :cond_3

    .line 147
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v1, v0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v1    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v0, v1

    .line 149
    .end local v1    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_3
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v2, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 159
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 100
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
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
    .line 96
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 6
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
    .line 105
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->hasValue(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    .local v0, "hasValue":Z
    const/4 v1, 0x0

    .line 110
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getUnadapted(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getValueType()Ljava/lang/Class;

    move-result-object v2

    .line 118
    .local v2, "valueType":Ljava/lang/Class;
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->improvedXsiTypeHandling:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->isAdapted()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->isValueTypeAbstractable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v3, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 123
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->fieldName:Ljava/lang/String;

    iget-object v4, p2, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v4, v2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v4

    iget-boolean v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->nillable:Z

    invoke-virtual {p2, v1, v3, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    .line 124
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 136
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    if-eqz v0, :cond_2

    .line 129
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, p2, v4, p1, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_2
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->nillable:Z

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleElementLeafProperty;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 133
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_1

    .line 111
    .end local v2    # "valueType":Ljava/lang/Class;
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
