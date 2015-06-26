.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "LeafPropertyXsiLoader.java"


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field private final defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .param p1, "defaultLoader"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .param p2, "xacc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .param p3, "acc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .prologue
    .line 63
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>()V

    .line 64
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->expectText:Z

    .line 66
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 67
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 68
    return-void
.end method


# virtual methods
.method public getExpectedAttributes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedAttributes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedChildElements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedChildElements()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected selectLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 14
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v5

    .line 81
    .local v5, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    const/4 v2, 0x0

    .line 84
    .local v2, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    move-object/from16 v0, p2

    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    .line 85
    .local v1, "atts":Lorg/xml/sax/Attributes;
    const-string v9, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v10, "type"

    invoke-interface {v1, v9, v10}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, "idx":I
    if-ltz v6, :cond_3

    .line 88
    invoke-interface {v1, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8, v5}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;

    move-result-object v7

    .line 92
    .local v7, "type":Ljavax/xml/namespace/QName;
    if-nez v7, :cond_0

    .line 93
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 116
    .end local v7    # "type":Ljavax/xml/namespace/QName;
    .end local v8    # "value":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 95
    .restart local v7    # "type":Ljavax/xml/namespace/QName;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v9

    invoke-virtual {v9, v7}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getGlobalType(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0

    .line 100
    :cond_1
    :try_start_0
    move-object v0, v2

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v3, "cbii":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v9

    if-nez v9, :cond_2

    .line 106
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0

    .line 101
    .end local v3    # "cbii":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :catch_0
    move-exception v4

    .line 102
    .local v4, "cce":Ljava/lang/ClassCastException;
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0

    .line 109
    .end local v4    # "cce":Ljava/lang/ClassCastException;
    .restart local v3    # "cbii":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :cond_2
    new-instance v9, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;

    new-instance v10, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v11

    invoke-virtual {v11}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v11

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v12

    iget-object v13, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-direct {v10, v11, v12, v13}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    invoke-direct {v9, v10}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V

    goto :goto_0

    .line 116
    .end local v3    # "cbii":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    .end local v7    # "type":Ljavax/xml/namespace/QName;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyXsiLoader;->selectLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 75
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 76
    return-void
.end method
