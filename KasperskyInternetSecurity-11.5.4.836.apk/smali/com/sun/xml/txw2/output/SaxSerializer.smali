.class public Lcom/sun/xml/txw2/output/SaxSerializer;
.super Ljava/lang/Object;
.source "SaxSerializer.java"

# interfaces
.implements Lcom/sun/xml/txw2/output/XmlSerializer;


# instance fields
.field private final attrs:Lorg/xml/sax/helpers/AttributesImpl;

.field private final elementBindings:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lexical:Lorg/xml/sax/ext/LexicalHandler;

.field private final prefixBindings:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final writer:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/sax/SAXResult;)V
    .locals 2
    .param p1, "result"    # Ljavax/xml/transform/sax/SAXResult;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lex"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/xml/txw2/output/SaxSerializer;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Z)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lex"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p3, "indenting"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->prefixBindings:Ljava/util/Stack;

    .line 122
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    .line 134
    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    .line 78
    if-nez p3, :cond_0

    .line 79
    iput-object p1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    .line 80
    iput-object p2, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;

    invoke-direct {v0, p1, p2}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    .line 83
    .local v0, "indenter":Lcom/sun/xml/txw2/output/IndentingXMLFilter;
    iput-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    .line 84
    iput-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0
.end method

.method private static getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    move-object v0, p1

    .line 226
    .local v0, "qName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    .end local v0    # "qName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "qName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    invoke-static {p3, p2}, Lcom/sun/xml/txw2/output/SaxSerializer;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public cdata(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "LexicalHandler is needed to write PCDATA"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 188
    invoke-virtual {p0, p1}, Lcom/sun/xml/txw2/output/SaxSerializer;->text(Ljava/lang/StringBuilder;)V

    .line 189
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public comment(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "comment"    # Ljava/lang/StringBuilder;

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "LexicalHandler is needed to write comments"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    return-void
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 146
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->prefixBindings:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v3, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->prefixBindings:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->prefixBindings:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    invoke-static {p3, p2}, Lcom/sun/xml/txw2/output/SaxSerializer;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v1, p1, p2, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 157
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    return-void
.end method

.method public endTag()V
    .locals 5

    .prologue
    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->elementBindings:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public text(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->writer:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-static {p3, p2}, Lcom/sun/xml/txw2/output/SaxSerializer;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public writeXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const-string p1, ""

    .line 113
    :cond_0
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->prefixBindings:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/sun/xml/txw2/output/SaxSerializer;->prefixBindings:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
