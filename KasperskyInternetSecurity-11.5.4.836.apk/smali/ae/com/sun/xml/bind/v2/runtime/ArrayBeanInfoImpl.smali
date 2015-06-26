.class final Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "ArrayBeanInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;
    }
.end annotation


# instance fields
.field private final itemBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

.field private final itemType:Ljava/lang/Class;

.field private loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;)V
    .locals 8
    .param p1, "owner"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "rai"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;Ljavax/xml/namespace/QName;ZZZ)V

    .line 77
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->itemType:Ljava/lang/Class;

    .line 78
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;->getItemType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->itemBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->itemBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    return-object v0
.end method


# virtual methods
.method public final createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 195
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-object v0
.end method

.method public final getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method protected link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 1
    .param p1, "grammar"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 84
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 85
    return-void
.end method

.method public final reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public final serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 171
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 135
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 136
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "item":Ljava/lang/Object;
    const-string v3, ""

    const-string v4, "item"

    invoke-virtual {p2, v3, v4, v6, v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 144
    :goto_1
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    const-string v3, "arrayItem"

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->itemBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    const/4 v5, 0x0

    invoke-virtual {p2, v1, v3, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    goto :goto_1

    .line 146
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public final serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 174
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

    .line 180
    return-void
.end method

.method public final serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 184
    return-void
.end method

.method protected toArray(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 127
    .local v2, "len":I
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->itemType:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 129
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-object v0
.end method
