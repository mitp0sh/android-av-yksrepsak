.class public Lae/com/sun/xml/bind/unmarshaller/DOMScanner;
.super Ljava/lang/Object;
.source "DOMScanner.java"

# interfaces
.implements Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;


# instance fields
.field private final atts:Lorg/xml/sax/helpers/AttributesImpl;

.field private currentNode:Lorg/w3c/dom/Node;

.field private locator:Lorg/xml/sax/Locator;

.field private receiver:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v1, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->currentNode:Lorg/w3c/dom/Node;

    .line 83
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    .line 86
    iput-object v1, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    .line 88
    iput-object p0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->locator:Lorg/xml/sax/Locator;

    .line 91
    return-void
.end method

.method private buildNamespaceSupport(Lorg/xml/sax/helpers/NamespaceSupport;Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "nss"    # Lorg/xml/sax/helpers/NamespaceSupport;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 176
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 194
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->buildNamespaceSupport(Lorg/xml/sax/helpers/NamespaceSupport;Lorg/w3c/dom/Node;)V

    .line 181
    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 182
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 183
    .local v1, "atts":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 184
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 185
    .local v0, "a":Lorg/w3c/dom/Attr;
    const-string v3, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_3
    const-string v3, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    const-string v3, ""

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private setCurrentLocation(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "currNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 294
    iput-object p1, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->currentNode:Lorg/w3c/dom/Node;

    .line 295
    return-void
.end method

.method private visit(Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 274
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 291
    .end local p1    # "n":Lorg/w3c/dom/Node;
    :goto_0
    :pswitch_0
    return-void

    .line 277
    .restart local p1    # "n":Lorg/w3c/dom/Node;
    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0

    .line 281
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_2
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "n":Lorg/w3c/dom/Node;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->visit(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 284
    .restart local p1    # "n":Lorg/w3c/dom/Node;
    :pswitch_3
    iget-object v2, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    move-object v0, p1

    .line 287
    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    .line 288
    .local v0, "pi":Lorg/w3c/dom/ProcessingInstruction;
    iget-object v2, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, -0x1

    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getCurrentElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->currentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getCurrentLocation()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->currentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method public getLocation()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->getCurrentLocation()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method public getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .locals 0

    .prologue
    .line 310
    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/w3c/dom/Element;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 148
    iput-object p2, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    .line 150
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 151
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 153
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 154
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->visit(Lorg/w3c/dom/Element;)V

    .line 156
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 157
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 158
    return-void
.end method

.method public parseWithContext(Lorg/w3c/dom/Element;Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 169
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->scan(Lorg/w3c/dom/Element;)V

    .line 170
    return-void
.end method

.method public scan(Ljava/lang/Object;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 102
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->scan(Lorg/w3c/dom/Document;)V

    .line 107
    :goto_0
    return-void

    .line 105
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->scan(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public scan(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->scan(Lorg/w3c/dom/Element;)V

    .line 111
    return-void
.end method

.method public scan(Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 116
    iget-object v3, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    iget-object v4, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v3, v4}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 117
    iget-object v3, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 119
    new-instance v1, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v1}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    .line 120
    .local v1, "nss":Lorg/xml/sax/helpers/NamespaceSupport;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->buildNamespaceSupport(Lorg/xml/sax/helpers/NamespaceSupport;Lorg/w3c/dom/Node;)V

    .line 122
    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->visit(Lorg/w3c/dom/Element;)V

    .line 129
    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .restart local v2    # "prefix":Ljava/lang/String;
    iget-object v3, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 136
    iget-object v3, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 137
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 314
    iput-object p1, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    .line 315
    return-void
.end method

.method public setLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "loc"    # Lorg/xml/sax/Locator;

    .prologue
    .line 98
    iput-object p1, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->locator:Lorg/xml/sax/Locator;

    .line 99
    return-void
.end method

.method public visit(Lorg/w3c/dom/Element;)V
    .locals 15
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct/range {p0 .. p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 201
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 203
    .local v7, "attributes":Lorg/w3c/dom/NamedNodeMap;
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 204
    if-nez v7, :cond_0

    const/4 v11, 0x0

    .line 206
    .local v11, "len":I
    :goto_0
    add-int/lit8 v10, v11, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_6

    .line 207
    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    .line 208
    .local v6, "a":Lorg/w3c/dom/Attr;
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "name":Ljava/lang/String;
    const-string v0, "xmlns"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 212
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 204
    .end local v6    # "a":Lorg/w3c/dom/Attr;
    .end local v10    # "i":I
    .end local v11    # "len":I
    .end local v13    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    goto :goto_0

    .line 214
    .restart local v6    # "a":Lorg/w3c/dom/Attr;
    .restart local v10    # "i":I
    .restart local v11    # "len":I
    .restart local v13    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v12

    .line 215
    .local v12, "localName":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 217
    const/4 v0, 0x6

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 219
    :cond_2
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v12, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 224
    .end local v12    # "localName":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "uri":Ljava/lang/String;
    if-nez v1, :cond_4

    const-string v1, ""

    .line 227
    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "local":Ljava/lang/String;
    if-nez v2, :cond_5

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_5
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 239
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "local":Ljava/lang/String;
    .end local v6    # "a":Lorg/w3c/dom/Attr;
    .end local v13    # "name":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "uri":Ljava/lang/String;
    if-nez v1, :cond_7

    const-string v1, ""

    .line 241
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2    # "local":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v14

    .line 243
    .local v14, "qname":Ljava/lang/String;
    if-nez v2, :cond_8

    move-object v2, v14

    .line 244
    :cond_8
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v0, v1, v2, v14, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 247
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 248
    .local v8, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 249
    .local v9, "clen":I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_9

    .line 250
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->visit(Lorg/w3c/dom/Node;)V

    .line 249
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 254
    :cond_9
    invoke-direct/range {p0 .. p1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->setCurrentLocation(Lorg/w3c/dom/Node;)V

    .line 255
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v1, v2, v14}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    add-int/lit8 v10, v11, -0x1

    :goto_4
    if-ltz v10, :cond_c

    .line 259
    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    .line 260
    .restart local v6    # "a":Lorg/w3c/dom/Attr;
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v13

    .line 261
    .restart local v13    # "name":Ljava/lang/String;
    const-string v0, "xmlns"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_b

    .line 263
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    invoke-interface {v0, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 258
    :cond_a
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 265
    :cond_b
    iget-object v0, p0, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;->receiver:Lorg/xml/sax/ContentHandler;

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_5

    .line 268
    .end local v6    # "a":Lorg/w3c/dom/Attr;
    .end local v13    # "name":Ljava/lang/String;
    :cond_c
    return-void
.end method
