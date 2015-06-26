.class public Lcom/sun/xml/txw2/output/IndentingXMLFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "IndentingXMLFilter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final NEWLINE:[C

.field private static final SEEN_DATA:Ljava/lang/Object;

.field private static final SEEN_ELEMENT:Ljava/lang/Object;

.field private static final SEEN_NOTHING:Ljava/lang/Object;


# instance fields
.field private depth:I

.field private indentStep:Ljava/lang/String;

.field private lexical:Lorg/xml/sax/ext/LexicalHandler;

.field private state:Ljava/lang/Object;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->NEWLINE:[C

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_NOTHING:Ljava/lang/Object;

    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_ELEMENT:Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_DATA:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 322
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->stateStack:Ljava/util/Stack;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->indentStep:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 322
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->stateStack:Ljava/util/Stack;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->indentStep:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    .line 63
    invoke-virtual {p0, p1}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "lexical"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 322
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->stateStack:Ljava/util/Stack;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->indentStep:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    .line 67
    invoke-virtual {p0, p1}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 69
    return-void
.end method

.method private doIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 301
    iget v2, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    if-lez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->indentStep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 303
    .local v0, "ch":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    if-ge v1, v2, :cond_0

    .line 304
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->characters([CII)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "ch":[C
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private writeNewLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->NEWLINE:[C

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->NEWLINE:[C

    array-length v2, v2

    invoke-super {p0, v0, v1, v2}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 161
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_DATA:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    .line 244
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 245
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    if-lez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->writeNewLine()V

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->doIndent()V

    .line 252
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 254
    :cond_1
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
    .line 282
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 284
    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 264
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 187
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    .line 188
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    sget-object v1, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_ELEMENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->writeNewLine()V

    .line 190
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->doIndent()V

    .line 192
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public getIndentStep()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->indentStep:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public setIndentStep(I)V
    .locals 2
    .param p1, "indentStep"    # I

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "s":Ljava/lang/StringBuilder;
    :goto_0
    if-lez p1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->setIndentStep(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setIndentStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->indentStep:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "lexical"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    .line 77
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
    .line 277
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 279
    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->stateStack:Ljava/util/Stack;

    sget-object v1, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_ELEMENT:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->state:Ljava/lang/Object;

    .line 151
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    if-lez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->writeNewLine()V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->doIndent()V

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 156
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->depth:I

    .line 157
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLFilter;->lexical:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method
