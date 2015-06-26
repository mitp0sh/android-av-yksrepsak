.class public final Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
.super Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;
.source "MarshallerImpl.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEventHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final C14N:Ljava/lang/String; = "ae.com.sun.xml.bind.c14n"

.field protected static final ENCODING_HANDLER:Ljava/lang/String; = "ae.com.sun.xml.bind.characterEscapeHandler"

.field protected static final ENCODING_HANDLER2:Ljava/lang/String; = "ae.com.sun.xml.bind.marshaller.CharacterEscapeHandler"

.field protected static final INDENT_STRING:Ljava/lang/String; = "ae.com.sun.xml.bind.indentString"

.field protected static final OBJECT_IDENTITY_CYCLE_DETECTION:Ljava/lang/String; = "ae.com.sun.xml.bind.objectIdentitityCycleDetection"

.field protected static final PREFIX_MAPPER:Ljava/lang/String; = "ae.com.sun.xml.bind.namespacePrefixMapper"

.field protected static final XMLDECLARATION:Ljava/lang/String; = "ae.com.sun.xml.bind.xmlDeclaration"

.field protected static final XML_HEADERS:Ljava/lang/String; = "ae.com.sun.xml.bind.xmlHeaders"


# instance fields
.field private c14nSupport:Z

.field final context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field private escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

.field private externalListener:Lae/javax/xml/bind/Marshaller$Listener;

.field private header:Ljava/lang/String;

.field private indent:Ljava/lang/String;

.field private prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

.field private schema:Ljavax/xml/validation/Schema;

.field protected final serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

.field private toBeClosed:Ljava/io/Closeable;

.field private toBeFlushed:Ljava/io/Flushable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V
    .locals 3
    .param p1, "c"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "assoc"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;-><init>()V

    .line 114
    const-string v1, "    "

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->indent:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .line 120
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .line 123
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->header:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->externalListener:Lae/javax/xml/bind/Marshaller$Listener;

    .line 151
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 152
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;-><init>(Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;)V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .line 153
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-boolean v1, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->c14nSupport:Z

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->c14nSupport:Z

    .line 156
    :try_start_0
    invoke-virtual {p0, p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 549
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    return-void
.end method

.method private checkString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 561
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lae/javax/xml/bind/PropertyException;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeFlushed:Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeFlushed:Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeClosed:Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 348
    :try_start_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeClosed:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    :cond_1
    :goto_1
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeFlushed:Ljava/io/Flushable;

    .line 353
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeClosed:Ljava/io/Closeable;

    .line 354
    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_1

    .line 343
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private postwrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endDocument()V

    .line 378
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reconcileID()V

    .line 379
    return-void
.end method

.method private prewrite(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;ZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .param p2, "fragment"    # Z
    .param p3, "postInitAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getSchemaLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getNoNSSchemaLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, p2, v5, v6}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startDocument(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;ZLjava/lang/String;Ljava/lang/String;)V

    .line 360
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 361
    :cond_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    if-eqz v4, :cond_2

    .line 363
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->getContextualNamespaceDecls()[Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "decls":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 366
    aget-object v3, v0, v1

    .line 367
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    aget-object v2, v0, v4

    .line 368
    .local v2, "nsUri":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 369
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v4, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->addInscopeBinding(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 373
    .end local v0    # "decls":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "nsUri":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setPrefixMapper(Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;)V

    .line 374
    return-void
.end method

.method private write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .param p3, "postInitAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_MARSHALLABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->cleanUp()V

    throw v4

    .line 297
    :cond_0
    :try_start_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    if-eqz v4, :cond_1

    .line 299
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    invoke-virtual {v4}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object v3

    .line 300
    .local v3, "validator":Ljavax/xml/validation/ValidatorHandler;
    new-instance v4, Lae/com/sun/xml/bind/v2/util/FatalAdapter;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v4, v5}, Lae/com/sun/xml/bind/v2/util/FatalAdapter;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v3, v4}, Ljavax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 302
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$1;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;)V

    .line 308
    .local v1, "f":Lorg/xml/sax/helpers/XMLFilterImpl;
    invoke-virtual {v1, v3}, Lorg/xml/sax/helpers/XMLFilterImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 309
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$2;

    invoke-direct {v4, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$2;-><init>(Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;Lorg/xml/sax/ContentHandler;)V

    invoke-direct {v2, v4, p2}, Lae/com/sun/xml/bind/v2/runtime/output/ForkXmlOutput;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p2    # "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .local v2, "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    move-object p2, v2

    .line 322
    .end local v1    # "f":Lorg/xml/sax/helpers/XMLFilterImpl;
    .end local v2    # "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .end local v3    # "validator":Ljavax/xml/validation/ValidatorHandler;
    .restart local p2    # "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->isFragment()Z

    move-result v4

    invoke-direct {p0, p2, v4, p3}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prewrite(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;ZLjava/lang/Runnable;)V

    .line 323
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v4, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsRoot(Ljava/lang/Object;)V

    .line 324
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->postwrite()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    :try_start_3
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->cleanUp()V

    .line 337
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    new-instance v4, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v4, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 332
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v4, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v4, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 330
    .local v0, "e":Lae/javax/xml/stream/XMLStreamException;
    new-instance v4, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v4, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method


# virtual methods
.method protected createEscapeHandler(Ljava/lang/String;)Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .line 404
    :goto_0
    return-object v1

    .line 393
    :cond_0
    const-string v1, "UTF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    sget-object v1, Lae/com/sun/xml/bind/marshaller/MinimumEscapeHandler;->theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    goto :goto_0

    .line 401
    :cond_1
    :try_start_0
    new-instance v1, Lae/com/sun/xml/bind/marshaller/NioEscapeHandler;

    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/marshaller/NioEscapeHandler;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;->theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    goto :goto_0
.end method

.method final createPostInitAction(Ljavax/xml/transform/Result;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "result"    # Ljavax/xml/transform/Result;

    .prologue
    .line 243
    instance-of v1, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v1, :cond_0

    .line 244
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1    # "result":Ljavax/xml/transform/Result;
    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 245
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v1, v0, v2}, Lae/com/sun/xml/bind/v2/runtime/DomPostInitAction;-><init>(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 247
    .end local v0    # "node":Lorg/w3c/dom/Node;
    :goto_0
    return-object v1

    .restart local p1    # "result":Ljavax/xml/transform/Result;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createWriter(Ljava/io/OutputStream;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 444
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getUTF8NameTable()[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    move-result-object v2

    .line 447
    .local v2, "table":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->isFormattedOutput()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->indent:Ljava/lang/String;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-direct {v1, p1, v3, v2, v4}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;-><init>(Ljava/io/OutputStream;Ljava/lang/String;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 455
    .local v1, "out":Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    :goto_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->header:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 456
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->header:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->setHeader(Ljava/lang/String;)V

    .line 461
    .end local v1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    .end local v2    # "table":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    :cond_0
    :goto_1
    return-object v1

    .line 450
    .restart local v2    # "table":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    :cond_1
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->c14nSupport:Z

    if-eqz v3, :cond_2

    .line 451
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-boolean v3, v3, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->c14nSupport:Z

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-direct {v1, p1, v2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;-><init>(Ljava/io/OutputStream;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;ZLae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .restart local v1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    goto :goto_0

    .line 453
    .end local v1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    :cond_2
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-direct {v1, p1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;-><init>(Ljava/io/OutputStream;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .restart local v1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    goto :goto_0

    .line 461
    .end local v1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    .end local v2    # "table":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/Writer;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lae/javax/xml/bind/MarshalException;

    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_ENCODING:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public createWriter(Ljava/io/Writer;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;

    .prologue
    .line 432
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/Writer;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .locals 5
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 410
    instance-of v4, p1, Ljava/io/BufferedWriter;

    if-nez v4, :cond_0

    .line 411
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local p1    # "w":Ljava/io/Writer;
    .local v2, "w":Ljava/io/Writer;
    move-object p1, v2

    .line 413
    .end local v2    # "w":Ljava/io/Writer;
    .restart local p1    # "w":Ljava/io/Writer;
    :cond_0
    sget-boolean v4, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeFlushed:Ljava/io/Flushable;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 414
    :cond_1
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeFlushed:Ljava/io/Flushable;

    .line 416
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createEscapeHandler(Ljava/lang/String;)Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    move-result-object v0

    .line 419
    .local v0, "ceh":Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->isFormattedOutput()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    new-instance v1, Lae/com/sun/xml/bind/marshaller/DataWriter;

    invoke-direct {v1, p1, p2, v0}, Lae/com/sun/xml/bind/marshaller/DataWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 421
    .local v1, "d":Lae/com/sun/xml/bind/marshaller/DataWriter;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->indent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lae/com/sun/xml/bind/marshaller/DataWriter;->setIndentStep(Ljava/lang/String;)V

    .line 422
    move-object v3, v1

    .line 426
    .end local v1    # "d":Lae/com/sun/xml/bind/marshaller/DataWriter;
    .local v3, "xw":Lae/com/sun/xml/bind/marshaller/XMLWriter;
    :goto_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->isFragment()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->setXmlDecl(Z)V

    .line 427
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->header:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->setHeader(Ljava/lang/String;)V

    .line 428
    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;

    invoke-direct {v4, v3}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    return-object v4

    .line 424
    .end local v3    # "xw":Lae/com/sun/xml/bind/marshaller/XMLWriter;
    :cond_2
    new-instance v3, Lae/com/sun/xml/bind/marshaller/XMLWriter;

    invoke-direct {v3, p1, p2, v0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .restart local v3    # "xw":Lae/com/sun/xml/bind/marshaller/XMLWriter;
    goto :goto_0

    .line 426
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method final createXmlOutput(Ljavax/xml/transform/Result;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .locals 9
    .param p1, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 194
    instance-of v6, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v6, :cond_0

    .line 195
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    .end local p1    # "result":Ljavax/xml/transform/Result;
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    invoke-direct {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 228
    :goto_0
    return-object v6

    .line 197
    .restart local p1    # "result":Ljavax/xml/transform/Result;
    :cond_0
    instance-of v6, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v6, :cond_2

    move-object v6, p1

    .line 198
    check-cast v6, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 200
    .local v4, "node":Lorg/w3c/dom/Node;
    if-nez v4, :cond_1

    .line 201
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createDom()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 202
    .local v0, "doc":Lorg/w3c/dom/Document;
    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    .end local p1    # "result":Ljavax/xml/transform/Result;
    invoke-virtual {p1, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 203
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;

    new-instance v7, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    invoke-direct {v7, v0}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0

    .line 205
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "result":Ljavax/xml/transform/Result;
    :cond_1
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;

    new-instance v7, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    invoke-direct {v7, v4}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0

    .line 208
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_2
    instance-of v6, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v6, :cond_6

    move-object v5, p1

    .line 209
    check-cast v5, Ljavax/xml/transform/stream/StreamResult;

    .line 211
    .local v5, "sr":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 212
    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/Writer;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v6

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 214
    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/OutputStream;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v6

    goto :goto_0

    .line 215
    :cond_4
    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 216
    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "fileURL":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 225
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, "fos":Ljava/io/FileOutputStream;
    sget-boolean v6, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeClosed:Ljava/io/Closeable;

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v6, v1}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_2
    iput-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->toBeClosed:Ljava/io/Closeable;

    .line 228
    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/OutputStream;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 236
    .end local v2    # "fileURL":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "sr":Ljavax/xml/transform/stream/StreamResult;
    :cond_6
    new-instance v6, Lae/javax/xml/bind/MarshalException;

    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNSUPPORTED_RESULT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    .restart local v2    # "fileURL":Ljava/lang/String;
    .restart local v5    # "sr":Ljavax/xml/transform/stream/StreamResult;
    :catch_1
    move-exception v6

    goto :goto_1
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
    .line 578
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 580
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->containsAdapter(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttachmentMarshaller()Lae/javax/xml/bind/attachment/AttachmentMarshaller;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    return-object v0
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    return-object v0
.end method

.method public getListener()Lae/javax/xml/bind/Marshaller$Listener;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->externalListener:Lae/javax/xml/bind/Marshaller$Listener;

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
    .line 474
    const-string v0, "ae.com.sun.xml.bind.indentString"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->indent:Ljava/lang/String;

    .line 489
    :goto_0
    return-object v0

    .line 476
    :cond_0
    const-string v0, "ae.com.sun.xml.bind.characterEscapeHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ae.com.sun.xml.bind.marshaller.CharacterEscapeHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    goto :goto_0

    .line 478
    :cond_2
    const-string v0, "ae.com.sun.xml.bind.namespacePrefixMapper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    goto :goto_0

    .line 480
    :cond_3
    const-string v0, "ae.com.sun.xml.bind.xmlDeclaration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->isFragment()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 482
    :cond_5
    const-string v0, "ae.com.sun.xml.bind.xmlHeaders"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->header:Ljava/lang/String;

    goto :goto_0

    .line 484
    :cond_6
    const-string v0, "ae.com.sun.xml.bind.c14n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 485
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->c14nSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_7
    const-string v0, "ae.com.sun.xml.bind.objectIdentitityCycleDetection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 487
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getObjectIdentityCycleDetection()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_8
    invoke-super {p0, p1}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    return-object v0
.end method

.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    .locals 1
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "output"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLEventWriter;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "writer"    # Lae/javax/xml/stream/XMLEventWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;

    invoke-direct {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/output/XMLEventWriterOutput;-><init>(Lae/javax/xml/stream/XMLEventWriter;)V

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;-><init>(Lae/javax/xml/stream/XMLEventWriter;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public marshal(Ljava/lang/Object;Lae/javax/xml/stream/XMLStreamWriter;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "writer"    # Lae/javax/xml/stream/XMLStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-static {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/output/XMLStreamWriterOutput;->create(Lae/javax/xml/stream/XMLStreamWriter;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v0

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;-><init>(Lae/javax/xml/stream/XMLStreamWriter;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public marshal(Ljava/lang/Object;Ljava/io/OutputStream;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "inscopeNamespace"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createWriter(Ljava/io/OutputStream;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v0

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-direct {v1, p3, v2}, Lae/com/sun/xml/bind/v2/runtime/StAXPostInitAction;-><init>(Ljavax/xml/namespace/NamespaceContext;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createXmlOutput(Ljavax/xml/transform/Result;)Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    move-result-object v0

    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->createPostInitAction(Ljavax/xml/transform/Result;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V

    .line 252
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
    .line 571
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p2, "adapter":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "TA;"
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 573
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->putAdapter(Ljava/lang/Class;Lae/javax/xml/bind/annotation/adapters/XmlAdapter;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 574
    return-void
.end method

.method public setAttachmentMarshaller(Lae/javax/xml/bind/attachment/AttachmentMarshaller;)V
    .locals 1
    .param p1, "am"    # Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    .prologue
    .line 589
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    iput-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    .line 590
    return-void
.end method

.method public setListener(Lae/javax/xml/bind/Marshaller$Listener;)V
    .locals 0
    .param p1, "listener"    # Lae/javax/xml/bind/Marshaller$Listener;

    .prologue
    .line 622
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->externalListener:Lae/javax/xml/bind/Marshaller$Listener;

    .line 623
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    const-string v2, "ae.com.sun.xml.bind.indentString"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->indent:Ljava/lang/String;

    .line 543
    :goto_0
    return-void

    .line 499
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v2, "ae.com.sun.xml.bind.characterEscapeHandler"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ae.com.sun.xml.bind.marshaller.CharacterEscapeHandler"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    :cond_1
    instance-of v2, p2, Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    if-nez v2, :cond_2

    .line 501
    new-instance v2, Lae/javax/xml/bind/PropertyException;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/Messages;->MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-class v1, Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_2
    check-cast p2, Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    goto :goto_0

    .line 509
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v2, "ae.com.sun.xml.bind.namespacePrefixMapper"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    instance-of v2, p2, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    if-nez v2, :cond_4

    .line 511
    new-instance v2, Lae/javax/xml/bind/PropertyException;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/Messages;->MUST_BE_X:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-class v1, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    :cond_4
    check-cast p2, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prefixMapper:Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    goto :goto_0

    .line 519
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v2, "ae.com.sun.xml.bind.xmlDeclaration"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 520
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v2, "jaxb.fragment"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v2, v0}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 526
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    const-string v0, "ae.com.sun.xml.bind.xmlHeaders"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 527
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->checkString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->header:Ljava/lang/String;

    goto/16 :goto_0

    .line 531
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string v0, "ae.com.sun.xml.bind.c14n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 532
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->c14nSupport:Z

    goto/16 :goto_0

    .line 536
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    const-string v0, "ae.com.sun.xml.bind.objectIdentitityCycleDetection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 537
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->checkBoolean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setObjectIdentityCycleDetection(Z)V

    goto/16 :goto_0

    .line 542
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    invoke-super {p0, p1, p2}, Lae/javax/xml/bind/helpers/AbstractMarshallerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 0
    .param p1, "s"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 604
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->schema:Ljavax/xml/validation/Schema;

    .line 605
    return-void
.end method

.method protected final write(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "rootTagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p4, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .param p5, "postInitAction"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
            "<TT;>;TT;",
            "Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TT;>;"
    .local p3, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p4, v1, p5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->prewrite(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;ZLjava/lang/Runnable;)V

    .line 262
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 263
    iget-object v1, p2, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_0

    iget-object v1, p2, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 265
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 273
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 274
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->postwrite()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :try_start_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->cleanUp()V

    .line 287
    return-void

    .line 268
    :cond_1
    if-nez p3, :cond_2

    .line 269
    :try_start_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_3
    new-instance v1, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v1, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->cleanUp()V

    throw v1

    .line 271
    :cond_2
    :try_start_5
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->serializer:Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    const-string v2, "root"

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v2, p2, v3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v1, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v1, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 280
    .local v0, "e":Lae/javax/xml/stream/XMLStreamException;
    new-instance v1, Lae/javax/xml/bind/MarshalException;

    invoke-direct {v1, v0}, Lae/javax/xml/bind/MarshalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
