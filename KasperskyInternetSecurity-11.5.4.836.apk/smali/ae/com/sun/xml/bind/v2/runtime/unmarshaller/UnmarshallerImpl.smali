.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
.super Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;
.source "UnmarshallerImpl.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEventHandler;
.implements Ljava/io/Closeable;


# static fields
.field public static final FACTORY:Ljava/lang/String; = "ae.com.sun.xml.bind.ObjectFactory"

.field private static final dummyHandler:Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private attachmentUnmarshaller:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

.field protected final context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field public final coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

.field private externalListener:Lae/javax/xml/bind/Unmarshaller$Listener;

.field private idResolver:Lae/com/sun/xml/bind/IDResolver;

.field private schema:Ljavax/xml/validation/Schema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->dummyHandler:Lorg/xml/sax/helpers/DefaultHandler;

    return-void
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V
    .locals 2
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "assoc"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .prologue
    .line 119
    invoke-direct {p0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;-><init>()V

    .line 117
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;

    invoke-direct {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultIDResolver;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    .line 120
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 121
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-direct {v1, p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .line 124
    :try_start_0
    invoke-virtual {p0, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getUnmarshallerHandler(ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;
    .locals 4
    .param p1, "intern"    # Z
    .param p2, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .prologue
    const/4 v3, 0x0

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshallerHandler(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    move-result-object v0

    .line 136
    .local v0, "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    if-eqz p1, :cond_0

    .line 137
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .end local v0    # "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .local v1, "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    move-object v0, v1

    .line 138
    .end local v1    # "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .restart local v0    # "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    :cond_0
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;

    invoke-direct {v2, v0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    return-object v2
.end method

.method private static handleStreamException(Lae/javax/xml/stream/XMLStreamException;)Lae/javax/xml/bind/JAXBException;
    .locals 2
    .param p0, "e"    # Lae/javax/xml/stream/XMLStreamException;

    .prologue
    .line 431
    invoke-virtual {p0}, Lae/javax/xml/stream/XMLStreamException;->getNestedException()Ljava/lang/Throwable;

    move-result-object v0

    .line 432
    .local v0, "ne":Ljava/lang/Throwable;
    instance-of v1, v0, Lae/javax/xml/bind/JAXBException;

    if-eqz v1, :cond_0

    .line 433
    check-cast v0, Lae/javax/xml/bind/JAXBException;

    .line 436
    .end local v0    # "ne":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .line 434
    .restart local v0    # "ne":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, v0, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_1

    .line 435
    new-instance v1, Lae/javax/xml/bind/UnmarshalException;

    invoke-direct {v1, v0}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 436
    :cond_1
    new-instance v0, Lae/javax/xml/bind/UnmarshalException;

    .end local v0    # "ne":Ljava/lang/Throwable;
    invoke-direct {v0, p0}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static needsInterning(Lorg/xml/sax/XMLReader;)Z
    .locals 3
    .param p0, "reader"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v0, 0x1

    .line 174
    :try_start_0
    const-string v1, "http://xml.org/sax/features/string-interning"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :goto_0
    :try_start_1
    const-string v1, "http://xml.org/sax/features/string-interning"

    invoke-interface {p0, v1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 186
    :cond_0
    :goto_1
    return v0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_1

    .line 175
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;
    .locals 2
    .param p0, "ss"    # Ljavax/xml/transform/stream/StreamSource;

    .prologue
    .line 539
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 540
    .local v0, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 542
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 544
    return-object v0
.end method

.method private unmarshal0(Lae/javax/xml/stream/XMLEventReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 8
    .param p1, "reader"    # Lae/javax/xml/stream/XMLEventReader;
    .param p2, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unmarshaller.NullReader"

    invoke-static {v6}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lae/javax/xml/stream/XMLEventReader;->peek()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 401
    .local v1, "event":Lae/javax/xml/stream/events/XMLEvent;
    invoke-interface {v1}, Lae/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1}, Lae/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v5

    if-nez v5, :cond_1

    .line 403
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unmarshaller.IllegalReaderState"

    invoke-interface {v1}, Lae/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1    # "event":Lae/javax/xml/stream/events/XMLEvent;
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lae/javax/xml/stream/XMLStreamException;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->handleStreamException(Lae/javax/xml/stream/XMLStreamException;)Lae/javax/xml/bind/JAXBException;

    move-result-object v5

    throw v5

    .line 409
    .end local v0    # "e":Lae/javax/xml/stream/XMLStreamException;
    .restart local v1    # "event":Lae/javax/xml/stream/events/XMLEvent;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sun.xml.stream.XMLReaderImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 410
    .local v4, "isZephyr":Z
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshallerHandler(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    move-result-object v2

    .line 411
    .local v2, "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    if-nez v4, :cond_2

    .line 412
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;

    invoke-direct {v3, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .end local v2    # "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .local v3, "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    move-object v2, v3

    .line 413
    .end local v3    # "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .restart local v2    # "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    :cond_2
    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;

    invoke-direct {v5, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;-><init>(Lae/javax/xml/stream/XMLEventReader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->bridge()V

    .line 414
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v5

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private unmarshal0(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "source"    # Lorg/xml/sax/InputSource;
    .param p3, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->needsInterning(Lorg/xml/sax/XMLReader;)Z

    move-result v3

    invoke-direct {p0, v3, p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getUnmarshallerHandler(ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;

    move-result-object v0

    .line 203
    .local v0, "connector":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 215
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-interface {p1, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 218
    :try_start_0
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, "result":Ljava/lang/Object;
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->dummyHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {p1, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 233
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->dummyHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {p1, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 235
    return-object v2

    .line 219
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->clearStates()V

    .line 221
    new-instance v3, Lae/javax/xml/bind/UnmarshalException;

    invoke-direct {v3, v1}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 222
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 223
    .local v1, "e":Lorg/xml/sax/SAXException;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->clearStates()V

    .line 224
    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshalException(Lorg/xml/sax/SAXException;)Lae/javax/xml/bind/UnmarshalException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-static {}, Lae/com/sun/xml/bind/v2/ClassFactory;->cleanCache()V

    .line 581
    return-void
.end method

.method public createUnmarshalException(Lorg/xml/sax/SAXException;)Lae/javax/xml/bind/UnmarshalException;
    .locals 1
    .param p1, "e"    # Lorg/xml/sax/SAXException;

    .prologue
    .line 527
    invoke-super {p0, p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->createUnmarshalException(Lorg/xml/sax/SAXException;)Lae/javax/xml/bind/UnmarshalException;

    move-result-object v0

    return-object v0
.end method

.method public final createUnmarshallerHandler(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .locals 4
    .param p1, "scanner"    # Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;
    .param p2, "inplace"    # Z
    .param p3, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .prologue
    .line 156
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v2, p1, p2, p3, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->reset(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Lae/com/sun/xml/bind/IDResolver;)V

    .line 157
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .line 160
    .local v0, "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    if-eqz v2, :cond_0

    .line 161
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    invoke-direct {v1, v2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;-><init>(Ljavax/xml/validation/Schema;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .end local v0    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .local v1, "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    move-object v0, v1

    .line 163
    .end local v1    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .restart local v0    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->attachmentUnmarshaller:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->attachmentUnmarshaller:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    invoke-virtual {v2}, Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;->isXOPPackage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->attachmentUnmarshaller:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    invoke-direct {v1, p0, v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V

    .end local v0    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .restart local v1    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    move-object v0, v1

    .line 166
    .end local v1    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .restart local v0    # "unmarshaller":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    :cond_1
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    invoke-static {}, Lae/com/sun/xml/bind/v2/ClassFactory;->cleanCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 573
    return-void

    .line 571
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 517
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->containsAdapter(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttachmentUnmarshaller()Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->attachmentUnmarshaller:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    return-object v0
.end method

.method public getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    return-object v0
.end method

.method public final getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    .locals 2

    .prologue
    .line 283
    :try_start_0
    invoke-super {p0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getListener()Lae/javax/xml/bind/Unmarshaller$Listener;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->externalListener:Lae/javax/xml/bind/Unmarshaller$Listener;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 441
    const-class v0, Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    .line 444
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    return-object v0
.end method

.method public getUnmarshallerHandler()Lae/javax/xml/bind/UnmarshallerHandler;
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getUnmarshallerHandler(ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    .locals 2
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 535
    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasEventHandler()Z
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 495
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "adapter":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TA;"
    if-nez p1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 510
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->putAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 511
    return-void
.end method

.method public setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V
    .locals 0
    .param p1, "au"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    .prologue
    .line 487
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->attachmentUnmarshaller:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    .line 488
    return-void
.end method

.method public setListener(Lae/javax/xml/bind/Unmarshaller$Listener;)V
    .locals 0
    .param p1, "listener"    # Lae/javax/xml/bind/Unmarshaller$Listener;

    .prologue
    .line 558
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->externalListener:Lae/javax/xml/bind/Unmarshaller$Listener;

    .line 559
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v0, "ae.com.sun.xml.bind.ObjectFactory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->setFactories(Ljava/lang/Object;)V

    .line 466
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 453
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-class v0, Lae/com/sun/xml/bind/IDResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    check-cast p2, Lae/com/sun/xml/bind/IDResolver;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->idResolver:Lae/com/sun/xml/bind/IDResolver;

    goto :goto_0

    .line 457
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-class v0, Lae/com/sun/xml/bind/api/ClassResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    check-cast p2, Lae/com/sun/xml/bind/api/ClassResolver;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->classResolver:Lae/com/sun/xml/bind/api/ClassResolver;

    goto :goto_0

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-class v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->coordinator:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    check-cast p2, Ljava/lang/ClassLoader;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->classLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 465
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-super {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 0
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 472
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    .line 473
    return-void
.end method

.method public setValidating(Z)V
    .locals 1
    .param p1, "validating"    # Z

    .prologue
    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unmarshal(Lae/javax/xml/stream/XMLEventReader;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
    .param p1, "reader"    # Lae/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lae/javax/xml/stream/XMLEventReader;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 384
    :cond_0
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lae/javax/xml/stream/XMLEventReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    return-object v0
.end method

.method public unmarshal(Lae/javax/xml/stream/XMLStreamReader;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
    .param p1, "reader"    # Lae/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lae/javax/xml/stream/XMLStreamReader;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 347
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 349
    :cond_0
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    return-object v0
.end method

.method public unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 4
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/transform/Source;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 241
    check-cast v1, Ljavax/xml/transform/sax/SAXSource;

    .line 243
    .local v1, "ss":Ljavax/xml/transform/sax/SAXSource;
    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 244
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 247
    :cond_0
    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v2

    .line 253
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    .end local v1    # "ss":Ljavax/xml/transform/sax/SAXSource;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    :goto_0
    return-object v2

    .line 249
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_1
    instance-of v2, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v2

    goto :goto_0

    .line 252
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_2
    instance-of v2, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v2, :cond_3

    .line 253
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal(Lorg/w3c/dom/Node;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v2

    goto :goto_0

    .line 256
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public unmarshal(Lorg/w3c/dom/Node;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 303
    :cond_0
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    return-object v0
.end method

.method protected unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xml/sax/XMLReader;",
            "Lorg/xml/sax/InputSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 194
    .local p3, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    return-object v0
.end method

.method public unmarshal(Lae/javax/xml/stream/XMLEventReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lae/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lae/javax/xml/stream/XMLEventReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lae/javax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lae/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Ljavax/xml/transform/sax/SAXSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljavax/xml/transform/sax/SAXSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    invoke-super {p0, p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final unmarshal(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal0(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 8
    .param p1, "reader"    # Lae/javax/xml/stream/XMLStreamReader;
    .param p2, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unmarshaller.NullReader"

    invoke-static {v6}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 358
    :cond_0
    invoke-interface {p1}, Lae/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    .line 359
    .local v2, "eventType":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x7

    if-eq v2, v5, :cond_1

    .line 362
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unmarshaller.IllegalReaderState"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lae/com/sun/xml/bind/unmarshaller/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshallerHandler(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    move-result-object v3

    .line 367
    .local v3, "h":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    invoke-static {p1, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXStreamConnector;->create(Lae/javax/xml/stream/XMLStreamReader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    move-result-object v0

    .line 370
    .local v0, "connector":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
    :try_start_0
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->bridge()V
    :try_end_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v5

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 376
    .local v4, "retVal":Ljava/lang/Object;
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v5

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->clearResult()V

    .line 377
    return-object v4

    .line 371
    .end local v4    # "retVal":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Lae/javax/xml/stream/XMLStreamException;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->handleStreamException(Lae/javax/xml/stream/XMLStreamException;)Lae/javax/xml/bind/JAXBException;

    move-result-object v5

    throw v5
.end method

.method public unmarshal0(Ljava/io/InputStream;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal0(Ljavax/xml/transform/Source;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 260
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 261
    check-cast v1, Ljavax/xml/transform/sax/SAXSource;

    .line 263
    .local v1, "ss":Ljavax/xml/transform/sax/SAXSource;
    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 264
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 267
    :cond_0
    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 273
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    .end local v1    # "ss":Ljavax/xml/transform/sax/SAXSource;
    .end local p1    # "source":Ljavax/xml/transform/Source;
    :goto_0
    return-object v2

    .line 269
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_1
    instance-of v2, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 272
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_2
    instance-of v2, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v2, :cond_3

    .line 273
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->unmarshal0(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 276
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public final unmarshal0(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "expectedType"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 318
    :try_start_0
    new-instance v3, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;

    invoke-direct {v3}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;-><init>()V

    .line 320
    .local v3, "scanner":Lae/com/sun/xml/bind/unmarshaller/DOMScanner;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshallerHandler(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    move-result-object v4

    invoke-direct {v1, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .line 321
    .local v1, "handler":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;

    invoke-direct {v4, v1, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 323
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 324
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->scan(Lorg/w3c/dom/Element;)V

    .line 332
    :goto_0
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v4

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 333
    .local v2, "retVal":Ljava/lang/Object;
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v4

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->clearResult()V

    .line 334
    return-object v2

    .line 326
    .end local v2    # "retVal":Ljava/lang/Object;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 327
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->scan(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v1    # "handler":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;
    .end local v3    # "scanner":Lae/com/sun/xml/bind/unmarshaller/DOMScanner;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshalException(Lorg/xml/sax/SAXException;)Lae/javax/xml/bind/UnmarshalException;

    move-result-object v4

    throw v4

    .line 330
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "handler":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;
    .restart local v3    # "scanner":Lae/com/sun/xml/bind/unmarshaller/DOMScanner;
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected node type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
.end method
