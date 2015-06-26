.class public Lcom/sun/istack/XMLStreamReaderToContentHandler;
.super Ljava/lang/Object;
.source "XMLStreamReaderToContentHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final eagerQuit:Z

.field private final fragment:Z

.field private final inscopeNamespaces:[Ljava/lang/String;

.field private final saxHandler:Lorg/xml/sax/ContentHandler;

.field private final staxStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sun/istack/XMLStreamReaderToContentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Lorg/xml/sax/ContentHandler;ZZ)V
    .locals 6
    .param p1, "staxCore"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "saxCore"    # Lorg/xml/sax/ContentHandler;
    .param p3, "eagerQuit"    # Z
    .param p4, "fragment"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/istack/XMLStreamReaderToContentHandler;-><init>(Ljavax/xml/stream/XMLStreamReader;Lorg/xml/sax/ContentHandler;ZZ[Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Lorg/xml/sax/ContentHandler;ZZ[Ljava/lang/String;)V
    .locals 1
    .param p1, "staxCore"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "saxCore"    # Lorg/xml/sax/ContentHandler;
    .param p3, "eagerQuit"    # Z
    .param p4, "fragment"    # Z
    .param p5, "inscopeNamespaces"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    .line 66
    iput-object p2, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    .line 67
    iput-boolean p3, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->eagerQuit:Z

    .line 68
    iput-boolean p4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->fragment:Z

    .line 69
    iput-object p5, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->inscopeNamespaces:[Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p5

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/istack/XMLStreamReaderToContentHandler;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .param p0, "x0"    # Lcom/sun/istack/XMLStreamReaderToContentHandler;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method private static fixNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 275
    if-nez p0, :cond_0

    const-string p0, ""

    .line 276
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private getAttributes()Lorg/xml/sax/Attributes;
    .locals 12

    .prologue
    .line 286
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 288
    .local v0, "attrs":Lorg/xml/sax/helpers/AttributesImpl;
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v6

    .line 289
    .local v6, "eventType":I
    const/16 v9, 0xa

    if-eq v6, v9, :cond_0

    const/4 v9, 0x1

    if-eq v6, v9, :cond_0

    .line 291
    new-instance v9, Ljava/lang/InternalError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAttributes() attempting to process: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 300
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 301
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "uri":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    .line 303
    :cond_1
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "localName":Ljava/lang/String;
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "prefix":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 307
    :cond_2
    move-object v3, v2

    .line 310
    .local v3, "qName":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "type":Ljava/lang/String;
    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "value":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "qName":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "qName":Ljava/lang/String;
    goto :goto_1

    .line 316
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "qName":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method private handleAttribute()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method private handleCDATA()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method private handleCharacters()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v2

    iget-object v3, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v3

    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/istack/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/sun/istack/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleComment()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method private handleDTD()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method private handleEndDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->fragment:Z

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_0
.end method

.method private handleEndElement()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 220
    .local v5, "qName":Ljavax/xml/namespace/QName;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "pfix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "rawname":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    .line 232
    .local v2, "nsCount":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 233
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "prefix":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 235
    const-string v4, ""

    .line 237
    :cond_1
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v7, v4}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 221
    .end local v1    # "i":I
    .end local v2    # "nsCount":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v6    # "rawname":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 239
    .end local v3    # "pfix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v7, Lcom/sun/istack/XMLStreamException2;

    invoke-direct {v7, v0}, Lcom/sun/istack/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 242
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "i":I
    .restart local v2    # "nsCount":I
    .restart local v3    # "pfix":Ljava/lang/String;
    .restart local v6    # "rawname":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private handleEntityDecl()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method private handleEntityReference()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method private handleNamespace()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method private handleNotationDecl()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method private handlePI()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/istack/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/sun/istack/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method private handleStartDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->fragment:Z

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    new-instance v1, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;

    invoke-direct {v1, p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler$1;-><init>(Lcom/sun/istack/XMLStreamReaderToContentHandler;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 192
    iget-object v0, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_0
.end method

.method private handleStartElement()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v3

    .line 249
    .local v3, "nsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 250
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v8, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v8, v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v9, v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_0
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 257
    .local v5, "qName":Ljavax/xml/namespace/QName;
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 260
    :cond_1
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "rawname":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v0

    .line 264
    .local v0, "attrs":Lorg/xml/sax/Attributes;
    iget-object v7, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 272
    return-void

    .line 262
    .end local v0    # "attrs":Lorg/xml/sax/Attributes;
    .end local v6    # "rawname":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6    # "rawname":Ljava/lang/String;
    goto :goto_1

    .line 269
    .end local v2    # "i":I
    .end local v3    # "nsCount":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "qName":Ljavax/xml/namespace/QName;
    .end local v6    # "rawname":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v7, Lcom/sun/istack/XMLStreamException2;

    invoke-direct {v7, v1}, Lcom/sun/istack/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public bridge()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "depth":I
    :try_start_0
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v2

    .line 85
    .local v2, "event":I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 87
    :goto_0
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    goto :goto_0

    .line 92
    :cond_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 93
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current event is not START_ELEMENT\n but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v2    # "event":I
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/sun/istack/XMLStreamException2;

    invoke-direct {v4, v1}, Lcom/sun/istack/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 95
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "event":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleStartDocument()V

    .line 97
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->inscopeNamespaces:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v5, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->inscopeNamespaces:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->inscopeNamespaces:[Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    aget-object v6, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 106
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 151
    :pswitch_0
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 109
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleStartElement()V

    .line 154
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->staxStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    .line 155
    if-nez v0, :cond_2

    .line 157
    :goto_3
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->inscopeNamespaces:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 158
    iget-object v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->saxHandler:Lorg/xml/sax/ContentHandler;

    iget-object v5, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->inscopeNamespaces:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    .line 112
    :pswitch_2
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleEndElement()V

    .line 113
    add-int/lit8 v0, v0, -0x1

    .line 114
    if-nez v0, :cond_3

    iget-boolean v4, p0, Lcom/sun/istack/XMLStreamReaderToContentHandler;->eagerQuit:Z

    if-eqz v4, :cond_3

    goto :goto_3

    .line 118
    :pswitch_3
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleCharacters()V

    goto :goto_2

    .line 121
    :pswitch_4
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleEntityReference()V

    goto :goto_2

    .line 124
    :pswitch_5
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handlePI()V

    goto :goto_2

    .line 127
    :pswitch_6
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleComment()V

    goto :goto_2

    .line 130
    :pswitch_7
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleDTD()V

    goto :goto_2

    .line 133
    :pswitch_8
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleAttribute()V

    goto :goto_2

    .line 136
    :pswitch_9
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleNamespace()V

    goto :goto_2

    .line 139
    :pswitch_a
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleCDATA()V

    goto :goto_2

    .line 142
    :pswitch_b
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleEntityDecl()V

    goto :goto_2

    .line 145
    :pswitch_c
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleNotationDecl()V

    goto :goto_2

    .line 148
    :pswitch_d
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleSpace()V

    goto :goto_2

    .line 161
    :cond_4
    invoke-direct {p0}, Lcom/sun/istack/XMLStreamReaderToContentHandler;->handleEndDocument()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    return-void

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
