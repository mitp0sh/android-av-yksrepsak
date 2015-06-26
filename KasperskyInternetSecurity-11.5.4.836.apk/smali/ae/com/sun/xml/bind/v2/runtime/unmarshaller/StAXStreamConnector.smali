.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
.source "StAXStreamConnector.java"


# static fields
.field private static final FI_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;",
            ">;"
        }
    .end annotation
.end field

.field private static final FI_STAX_READER_CLASS:Ljava/lang/Class;

.field private static final STAX_EX_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAX_EX_READER_CLASS:Ljava/lang/Class;


# instance fields
.field private final attributes:Lorg/xml/sax/Attributes;

.field protected final buffer:Ljava/lang/StringBuilder;

.field private final staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

.field protected textReported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->initFIStAXReaderClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_STAX_READER_CLASS:Ljava/lang/Class;

    .line 350
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->initFastInfosetConnectorClass()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;

    .line 383
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->initStAXExReader()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->STAX_EX_READER_CLASS:Ljava/lang/Class;

    .line 384
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->initStAXExConnector()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->STAX_EX_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method protected constructor <init>(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V
    .locals 1
    .param p1, "staxStreamReader"    # Lae/javax/xml/stream/XMLStreamReader;
    .param p2, "visitor"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .prologue
    .line 149
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->buffer:Ljava/lang/StringBuilder;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->textReported:Z

    .line 252
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->attributes:Lorg/xml/sax/Attributes;

    .line 150
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;)Lae/javax/xml/stream/XMLStreamReader;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    .prologue
    .line 68
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method private static checkImplementaionNameOfSjsxp(Lae/javax/xml/stream/XMLStreamReader;)Z
    .locals 4
    .param p0, "reader"    # Lae/javax/xml/stream/XMLStreamReader;

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_0
    const-string v3, "http://java.sun.com/xml/stream/properties/implementation-name"

    invoke-interface {p0, v3}, Lae/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "name":Ljava/lang/Object;
    if-eqz v1, :cond_0

    const-string v3, "sjsxp"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 116
    .end local v1    # "name":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 113
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static create(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
    .locals 6
    .param p0, "reader"    # Lae/javax/xml/stream/XMLStreamReader;
    .param p1, "visitor"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "readerClass":Ljava/lang/Class;
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_STAX_READER_CLASS:Ljava/lang/Class;

    if-eqz v3, :cond_0

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_STAX_READER_CLASS:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_0

    .line 80
    :try_start_0
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v3

    .line 81
    :catch_0
    move-exception v3

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sun.xml.stream.XMLReaderImpl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    .local v0, "isZephyr":Z
    const-string v3, "org.codehaus.stax2.internNames"

    invoke-static {p0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getBoolProp(Lae/javax/xml/stream/XMLStreamReader;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "org.codehaus.stax2.internNsUris"

    invoke-static {p0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getBoolProp(Lae/javax/xml/stream/XMLStreamReader;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    :cond_1
    :goto_1
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->STAX_EX_READER_CLASS:Ljava/lang/Class;

    if-eqz v3, :cond_3

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->STAX_EX_READER_CLASS:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    :try_start_1
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->STAX_EX_CONNECTOR_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 91
    :cond_2
    if-nez v0, :cond_1

    .line 94
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->checkImplementaionNameOfSjsxp(Lae/javax/xml/stream/XMLStreamReader;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;

    invoke-direct {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .end local p1    # "visitor":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .local v2, "visitor":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    move-object p1, v2

    .end local v2    # "visitor":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .restart local p1    # "visitor":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    goto :goto_1

    .line 102
    :catch_1
    move-exception v3

    .line 106
    :cond_3
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;

    invoke-direct {v3, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;-><init>(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    goto :goto_0
.end method

.method private static getBoolProp(Lae/javax/xml/stream/XMLStreamReader;Ljava/lang/String;)Z
    .locals 4
    .param p0, "r"    # Lae/javax/xml/stream/XMLStreamReader;
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 122
    :try_start_0
    invoke-interface {p0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    :cond_0
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 404
    const-class v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SecureLoader;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 405
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SecureLoader;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 408
    :cond_0
    return-object v0
.end method

.method private handleEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->processText(Z)V

    .line 219
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 224
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    .line 225
    .local v1, "nsCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 226
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v0}, Lae/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endPrefixMapping(Ljava/lang/String;)V

    .line 225
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method private handleStartElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->processText(Z)V

    .line 234
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    .line 235
    .local v1, "nsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 236
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v0}, Lae/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v4, v0}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->attributes:Lorg/xml/sax/Attributes;

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    .line 246
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 247
    return-void
.end method

.method private static initFIStAXReaderClass()Ljava/lang/Class;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 354
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 355
    .local v0, "cl":Ljava/lang/ClassLoader;
    const-string v5, "org.jvnet.fastinfoset.stax.FastInfosetStreamReader"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 356
    .local v2, "fisr":Ljava/lang/Class;
    const-string v5, "com.sun.xml.fastinfoset.stax.StAXDocumentParser"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 358
    .local v3, "sdp":Ljava/lang/Class;
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    .end local v2    # "fisr":Ljava/lang/Class;
    .end local v3    # "sdp":Ljava/lang/Class;
    :goto_0
    return-object v3

    .restart local v2    # "fisr":Ljava/lang/Class;
    .restart local v3    # "sdp":Ljava/lang/Class;
    :cond_0
    move-object v3, v4

    .line 361
    goto :goto_0

    .line 362
    .end local v2    # "fisr":Ljava/lang/Class;
    .end local v3    # "sdp":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    move-object v3, v4

    .line 363
    goto :goto_0
.end method

.method private static initFastInfosetConnectorClass()Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 369
    :try_start_0
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_STAX_READER_CLASS:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 376
    .local v0, "c":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 372
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "ae.com.sun.xml.bind.v2.runtime.unmarshaller.FastInfosetConnector"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 374
    .restart local v0    # "c":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->FI_STAX_READER_CLASS:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private static initStAXExConnector()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "ae.com.sun.xml.bind.v2.runtime.unmarshaller.StAXExConnector"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 397
    .local v0, "c":Ljava/lang/Class;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->STAX_EX_READER_CLASS:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 399
    :goto_0
    return-object v2

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static initStAXExReader()Ljava/lang/Class;
    .locals 3

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.jvnet.staxex.XMLStreamReaderEx"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 390
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 389
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 390
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processText(Z)V
    .locals 3
    .param p1, "ignorable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->textReported:Z

    if-eqz v0, :cond_2

    .line 336
    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->textReported:Z

    .line 341
    :cond_1
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 342
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 160
    .local v0, "depth":I
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    .line 161
    .local v2, "event":I
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 163
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    goto :goto_0

    .line 168
    :cond_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 169
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The current event is not START_ELEMENT\n but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2    # "event":I
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lae/javax/xml/stream/XMLStreamException;

    invoke-direct {v3, v1}, Lae/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "event":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v3

    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->handleStartDocument(Ljavax/xml/namespace/NamespaceContext;)V

    .line 178
    :goto_1
    sparse-switch v2, :sswitch_data_0

    .line 196
    :cond_2
    :goto_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    goto :goto_1

    .line 180
    :sswitch_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->handleStartElement()V

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    goto :goto_2

    .line 184
    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 185
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->handleEndElement()V

    .line 186
    if-nez v0, :cond_2

    .line 199
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->next()I

    .line 201
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->handleEndDocument()V

    .line 205
    return-void

    .line 191
    :sswitch_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->handleCharacters()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_2
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method protected getCurrentLocation()Lae/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentQName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleCharacters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Lae/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->staxStreamReader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Lae/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    return-void
.end method
