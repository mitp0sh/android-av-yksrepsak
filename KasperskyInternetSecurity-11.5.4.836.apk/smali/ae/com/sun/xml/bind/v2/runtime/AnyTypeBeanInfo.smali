.class final Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "AnyTypeBeanInfo.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/AttributeAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lae/com/sun/xml/bind/v2/runtime/AttributeAccessor;"
    }
.end annotation


# static fields
.field private static final domHandler:Lae/javax/xml/bind/annotation/W3CDomHandler;

.field private static final domLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;


# instance fields
.field private nilIncluded:Z

.field private final substLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lae/javax/xml/bind/annotation/W3CDomHandler;

    invoke-direct {v0}, Lae/javax/xml/bind/annotation/W3CDomHandler;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->domHandler:Lae/javax/xml/bind/annotation/W3CDomHandler;

    .line 189
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->domHandler:Lae/javax/xml/bind/annotation/W3CDomHandler;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;-><init>(Lae/javax/xml/bind/annotation/DomHandler;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->domLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    return-void
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)V
    .locals 8
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "anyTypeInfo"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;

    .prologue
    const/4 v5, 0x0

    .line 75
    const-class v3, Ljava/lang/Object;

    new-instance v4, Ljavax/xml/namespace/QName;

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const-string v1, "anyType"

    invoke-direct {v4, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljavax/xml/namespace/QName;ZZZ)V

    .line 72
    iput-boolean v5, p0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->nilIncluded:Z

    .line 190
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->substLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;

    .line 76
    return-void
.end method


# virtual methods
.method public createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->substLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->domLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    goto :goto_0
.end method

.method public getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 8
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 124
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 125
    .local v1, "al":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 126
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 127
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 129
    .local v0, "a":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "uri":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, ""

    .line 131
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "local":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "name":Ljava/lang/String;
    if-nez v4, :cond_1

    move-object v4, v5

    .line 134
    :cond_1
    const-string v7, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "nil"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    const/4 v7, 0x1

    iput-boolean v7, p0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->isNilIncluded:Z

    .line 137
    :cond_2
    const-string v7, "xmlns"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v4, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v0    # "a":Lorg/w3c/dom/Attr;
    .end local v4    # "local":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 107
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 108
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 109
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 110
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 111
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 109
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->text(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_2
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "child":Lorg/w3c/dom/Node;
    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;->domHandler:Lae/javax/xml/bind/annotation/W3CDomHandler;

    invoke-virtual {p2, v0, v4, v5, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeDom(Ljava/lang/Object;Lae/javax/xml/bind/annotation/DomHandler;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_0
    return-void

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 7
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 144
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNABLE_TO_MARSHAL_NON_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v6, v6}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 150
    return-void
.end method

.method public serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 153
    move-object v6, p1

    check-cast v6, Lorg/w3c/dom/Element;

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 154
    .local v1, "al":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    .line 155
    .local v4, "len":I
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v2

    .line 156
    .local v2, "context":Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 157
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 158
    .local v0, "a":Lorg/w3c/dom/Attr;
    const-string v6, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->force(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const-string v6, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 163
    instance-of v6, p1, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_2

    .line 164
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_1

    .line 167
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->force(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "nsUri":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 173
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v2, v5, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_1

    .line 175
    .end local v0    # "a":Lorg/w3c/dom/Attr;
    .end local v5    # "nsUri":Ljava/lang/String;
    :cond_4
    return-void
.end method
