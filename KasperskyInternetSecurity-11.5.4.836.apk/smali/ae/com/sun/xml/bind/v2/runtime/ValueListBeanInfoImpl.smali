.class final Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;
.super Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
.source "ValueListBeanInfoImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final itemType:Ljava/lang/Class;

.field private final loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field private final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Ljava/lang/Class;)V
    .locals 7
    .param p1, "owner"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "arrayType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 72
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;Ljava/lang/Class;ZZZ)V

    .line 78
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;

    invoke-direct {v0, p0, v5}, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;Z)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 73
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->itemType:Ljava/lang/Class;

    .line 74
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 75
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    return-object v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->toArray(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private toArray(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 115
    .local v2, "len":I
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->itemType:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 117
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final createInstance(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "typeSubstitutionCapable"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-object v0
.end method

.method public final getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public final serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 169
    return-void
.end method

.method public serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 6
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
    .line 122
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 123
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "item":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    const-string v5, "arrayItem"

    invoke-interface {v4, p2, v2, v5}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const-string v4, "arrayItem"

    invoke-virtual {p2, v4, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    .end local v2    # "item":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 172
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

    .line 178
    return-void
.end method

.method public final serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 136
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 137
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 139
    .local v2, "item":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v4, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const-string v4, "arrayItem"

    invoke-virtual {p2, v4, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "len":I
    :cond_0
    return-void
.end method
