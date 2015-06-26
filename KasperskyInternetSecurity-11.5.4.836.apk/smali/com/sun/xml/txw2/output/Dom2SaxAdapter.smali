.class Lcom/sun/xml/txw2/output/Dom2SaxAdapter;
.super Ljava/lang/Object;
.source "DomSerializer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field private final _document:Lorg/w3c/dom/Document;

.field private final _node:Lorg/w3c/dom/Node;

.field private final _nodeStk:Ljava/util/Stack;

.field private inCDATA:Z

.field private unprocessedNamespaces:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    .line 184
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 185
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 188
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    .line 189
    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_node:Lorg/w3c/dom/Node;

    .line 190
    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    iget-object v2, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    .line 171
    iput-object p1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_node:Lorg/w3c/dom/Node;

    .line 172
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_node:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 175
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    iput-object p1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    .line 178
    :goto_0
    return-void

    .line 177
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    goto :goto_0
.end method

.method private final getParent()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 270
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->inCDATA:Z

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 274
    .local v0, "text":Lorg/w3c/dom/Node;
    :goto_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->getParent()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 275
    return-void

    .line 273
    .end local v0    # "text":Lorg/w3c/dom/Node;
    :cond_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .restart local v0    # "text":Lorg/w3c/dom/Node;
    goto :goto_0
.end method

.method public comment([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->getParent()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 279
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->inCDATA:Z

    .line 325
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 311
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 317
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 305
    return-void
.end method

.method public final getCurrentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getDOM()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 284
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 288
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->getParent()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 289
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 292
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->inCDATA:Z

    .line 321
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 308
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 207
    iget-object v8, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_document:Lorg/w3c/dom/Document;

    invoke-interface {v8, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 209
    .local v0, "element":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    .line 212
    new-instance v8, Lcom/sun/xml/txw2/TxwException;

    const-string v9, "Your DOM provider doesn\'t support the createElementNS method properly"

    invoke-direct {v8, v9}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 216
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 217
    iget-object v8, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 218
    .local v4, "prefix":Ljava/lang/String;
    iget-object v8, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 221
    .local v6, "uri":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v4, :cond_3

    .line 222
    :cond_1
    const-string v5, "xmlns"

    .line 229
    .local v5, "qname":Ljava/lang/String;
    :goto_1
    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v8, v5}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v8, v5}, Lorg/w3c/dom/Element;->removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2
    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0, v8, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 224
    .end local v5    # "qname":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "qname":Ljava/lang/String;
    goto :goto_1

    .line 243
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "qname":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 246
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 247
    .local v2, "length":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    .line 248
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "namespaceuri":Ljava/lang/String;
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "value":Ljava/lang/String;
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 251
    .restart local v5    # "qname":Ljava/lang/String;
    invoke-interface {v0, v3, v5, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    .end local v3    # "namespaceuri":Ljava/lang/String;
    .end local v5    # "qname":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->getParent()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 256
    iget-object v8, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->_nodeStk:Ljava/util/Stack;

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 314
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/sun/xml/txw2/output/Dom2SaxAdapter;->unprocessedNamespaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method
