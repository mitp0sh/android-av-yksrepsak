.class public Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;
.super Ljava/lang/Object;
.source "SAX2DOMEx.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field protected final document:Lorg/w3c/dom/Document;

.field private isConsolidate:Z

.field private node:Lorg/w3c/dom/Node;

.field protected final nodeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/FinalArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->node:Lorg/w3c/dom/Node;

    .line 75
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    .line 76
    new-instance v1, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v1}, Lcom/sun/istack/FinalArrayList;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    .line 110
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 111
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 114
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    .line 115
    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->node:Lorg/w3c/dom/Node;

    .line 116
    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;-><init>(Lorg/w3c/dom/Node;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Z)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "isConsolidate"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->node:Lorg/w3c/dom/Node;

    .line 75
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    .line 76
    new-instance v0, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v0}, Lcom/sun/istack/FinalArrayList;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    .line 95
    iput-object p1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->node:Lorg/w3c/dom/Node;

    .line 96
    iput-boolean p2, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->isConsolidate:Z

    .line 97
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->node:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    iput-object p1, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    .line 104
    :goto_0
    return-void

    .line 102
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    goto :goto_0
.end method


# virtual methods
.method protected characters(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v3, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 210
    .local v1, "parent":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 212
    .local v0, "lastChild":Lorg/w3c/dom/Node;
    iget-boolean v3, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->isConsolidate:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v2, v0

    .line 213
    check-cast v2, Lorg/w3c/dom/Text;

    .line 214
    .local v2, "text":Lorg/w3c/dom/Text;
    invoke-interface {v2, p1}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-object v2

    .line 216
    .end local v2    # "text":Lorg/w3c/dom/Text;
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    .line 217
    .restart local v2    # "text":Lorg/w3c/dom/Text;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 205
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->characters(Ljava/lang/String;)Lorg/w3c/dom/Text;

    .line 206
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 243
    return-void
.end method

.method public final getCurrentElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getDOM()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 223
    return-void
.end method

.method protected namespace(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_2

    .line 136
    :cond_0
    const-string v0, "xmlns"

    .line 144
    .local v0, "qname":Ljava/lang/String;
    :goto_0
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p1, v1, v0, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 138
    .end local v0    # "qname":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "qname":Ljava/lang/String;
    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 227
    .local v1, "parent":Lorg/w3c/dom/Node;
    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    invoke-interface {v2, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 228
    .local v0, "n":Lorg/w3c/dom/Node;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 229
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 232
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 14
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 160
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 164
    .local v5, "parent":Lorg/w3c/dom/Node;
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    move-object/from16 v0, p3

    invoke-interface {v10, p1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 166
    .local v1, "element":Lorg/w3c/dom/Element;
    if-nez v1, :cond_0

    .line 169
    new-instance v10, Ljava/lang/AssertionError;

    const-string v11, "SAX2DOMEx.DomImplDoesntSupportCreateElementNs"

    iget-object v12, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lae/com/sun/xml/bind/marshaller/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 176
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v10}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 177
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    add-int/lit8 v11, v2, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 178
    .local v6, "prefix":Ljava/lang/String;
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 180
    .local v8, "uri":Ljava/lang/String;
    invoke-virtual {p0, v1, v6, v8}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->namespace(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 182
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v10}, Lcom/sun/istack/FinalArrayList;->clear()V

    .line 185
    if-eqz p4, :cond_2

    .line 186
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 187
    .local v3, "length":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 188
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "namespaceuri":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "value":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "qname":Ljava/lang/String;
    invoke-interface {v1, v4, v7, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v3    # "length":I
    .end local v4    # "namespaceuri":Ljava/lang/String;
    .end local v7    # "qname":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v5, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 197
    iget-object v10, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v10, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0, p1}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->unprocessedNamespaces:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0, p2}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method
