.class abstract Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;
.source "ArrayERProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ReceiverImpl;,
        Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;
    }
.end annotation

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


# instance fields
.field protected final isWrapperNillable:Z

.field protected final wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;Ljavax/xml/namespace/QName;Z)V
    .locals 1
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .param p3, "tagName"    # Ljavax/xml/namespace/QName;
    .param p4, "isWrapperNillable"    # Z

    .prologue
    .line 88
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty<TBeanT;TListT;TItemT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 89
    if-nez p3, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 93
    :goto_0
    iput-boolean p4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->isWrapperNillable:Z

    .line 94
    return-void

    .line 92
    :cond_0
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-virtual {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    goto :goto_0
.end method


# virtual methods
.method public final buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 7
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
    .line 189
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty<TBeanT;TListT;TItemT;>;"
    .local p2, "loaders":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v4, :cond_2

    .line 190
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;

    iget-object v4, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-direct {v0, v4}, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 191
    .local v0, "c":Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    new-instance v3, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    .line 192
    .local v3, "m":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    invoke-virtual {p0, v0, v3}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->createBodyUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    .line 193
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-direct {v1, v4, v5, v3}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    .line 194
    .local v1, "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    iget-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->isWrapperNillable:Z

    if-nez v4, :cond_0

    iget-object v4, p1, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-boolean v4, v4, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->allNillable:Z

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;

    invoke-direct {v2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V

    .end local v1    # "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .local v2, "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    move-object v1, v2

    .line 196
    .end local v2    # "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .restart local v1    # "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :cond_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;)V

    invoke-virtual {p2, v4, v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 200
    .end local v0    # "c":Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .end local v1    # "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .end local v3    # "m":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    :goto_0
    return-void

    .line 198
    :cond_2
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->createBodyUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    goto :goto_0
.end method

.method protected abstract createBodyUnmarshaller(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
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
.end method

.method public final serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 3
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty<TBeanT;TListT;TItemT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    const/4 v2, 0x0

    .line 150
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "list":Ljava/lang/Object;, "TListT;"
    if-eqz v0, :cond_2

    .line 153
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 159
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->serializeListBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V

    .line 161
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->isWrapperNillable:Z

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;->wrapperTagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {p2, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 168
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_0
.end method

.method protected abstract serializeListBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "T",
            "ListT;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation
.end method
