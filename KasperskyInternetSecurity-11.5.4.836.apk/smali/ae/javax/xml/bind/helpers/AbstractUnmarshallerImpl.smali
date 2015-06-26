.class public abstract Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;
.super Ljava/lang/Object;
.source "AbstractUnmarshallerImpl.java"

# interfaces
.implements Lae/javax/xml/bind/Unmarshaller;


# instance fields
.field private eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

.field private reader:Lorg/xml/sax/XMLReader;

.field protected validating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;

    invoke-direct {v0}, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v0, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->validating:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method private static streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;
    .locals 2
    .param p0, "ss"    # Ljavax/xml/transform/stream/StreamSource;

    .prologue
    .line 253
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 254
    .local v0, "is":Lorg/xml/sax/InputSource;
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 256
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 258
    return-object v0
.end method

.method private unmarshal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private unmarshal(Ljavax/xml/transform/sax/SAXSource;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Ljavax/xml/transform/sax/SAXSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 171
    .local v0, "r":Lorg/xml/sax/XMLReader;
    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected createUnmarshalException(Lorg/xml/sax/SAXException;)Lae/javax/xml/bind/UnmarshalException;
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXException;

    .prologue
    .line 354
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 355
    .local v0, "nested":Ljava/lang/Exception;
    instance-of v1, v0, Lae/javax/xml/bind/UnmarshalException;

    if-eqz v1, :cond_0

    .line 356
    check-cast v0, Lae/javax/xml/bind/UnmarshalException;

    .line 369
    .end local v0    # "nested":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 358
    .restart local v0    # "nested":Ljava/lang/Exception;
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 362
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "nested":Ljava/lang/Exception;
    throw v0

    .line 366
    .restart local v0    # "nested":Ljava/lang/Exception;
    :cond_1
    if-eqz v0, :cond_2

    .line 367
    new-instance v1, Lae/javax/xml/bind/UnmarshalException;

    invoke-direct {v1, v0}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 369
    :cond_2
    new-instance v0, Lae/javax/xml/bind/UnmarshalException;

    .end local v0    # "nested":Ljava/lang/Exception;
    invoke-direct {v0, p1}, Lae/javax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 451
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttachmentUnmarshaller()Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;
    .locals 1

    .prologue
    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    return-object v0
.end method

.method public getListener()Lae/javax/xml/bind/Unmarshaller$Listener;
    .locals 1

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "name"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    invoke-direct {v0, p1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v3, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    if-nez v3, :cond_0

    .line 118
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 126
    .local v1, "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 132
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 134
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    iput-object v3, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    .line 138
    iget-object v3, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    const-string v4, "http://xml.org/sax/features/namespaces"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 140
    iget-object v3, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    const-string v4, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .end local v1    # "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    :cond_0
    iget-object v3, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    return-object v3

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v3, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 143
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v3, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isValidating()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->validating:Z

    return v0
.end method

.method public setAdapter(Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->setAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)V

    .line 444
    return-void
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
    .line 447
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "adapter":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TA;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAttachmentUnmarshaller(Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V
    .locals 1
    .param p1, "au"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    .prologue
    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lae/javax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;

    invoke-direct {v0}, Lae/javax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v0, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iput-object p1, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Lae/javax/xml/bind/ValidationEventHandler;

    goto :goto_0
.end method

.method public setListener(Lae/javax/xml/bind/Unmarshaller$Listener;)V
    .locals 1
    .param p1, "listener"    # Lae/javax/xml/bind/Unmarshaller$Listener;

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "name"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    invoke-direct {v0, p1, p2}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 1
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 316
    iput-boolean p1, p0, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->validating:Z

    .line 317
    return-void
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
    .line 429
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 425
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
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
    .line 421
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 417
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final unmarshal(Ljava/io/File;)Ljava/lang/Object;
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2f

    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Shared.MustNotBeNull"

    const-string v4, "file"

    invoke-static {v3, v4}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "path":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_1

    .line 218
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_1
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_2
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_3
    new-instance v2, Ljava/net/URL;

    const-string v3, "file"

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljava/net/URL;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 224
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final unmarshal(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Shared.MustNotBeNull"

    const-string v3, "is"

    invoke-static {v2, v3}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 238
    .local v0, "isrc":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final unmarshal(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Shared.MustNotBeNull"

    const-string v3, "reader"

    invoke-static {v2, v3}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 248
    .local v0, "isrc":Lorg/xml/sax/InputSource;
    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final unmarshal(Ljava/net/URL;)Ljava/lang/Object;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "url"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "source"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    .line 157
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-direct {p0, p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljavax/xml/transform/sax/SAXSource;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 158
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_2

    .line 159
    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-static {p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 160
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_2
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    .line 161
    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    .end local p1    # "source":Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 164
    .restart local p1    # "source":Ljavax/xml/transform/Source;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shared.MustNotBeNull"

    const-string v2, "source"

    invoke-static {v1, v2}, Lae/javax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lae/javax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method
