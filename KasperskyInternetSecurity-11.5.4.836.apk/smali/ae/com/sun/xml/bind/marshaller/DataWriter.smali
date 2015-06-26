.class public Lae/com/sun/xml/bind/marshaller/DataWriter;
.super Lae/com/sun/xml/bind/marshaller/XMLWriter;
.source "DataWriter.java"


# static fields
.field private static final SEEN_DATA:Ljava/lang/Object;

.field private static final SEEN_ELEMENT:Ljava/lang/Object;

.field private static final SEEN_NOTHING:Ljava/lang/Object;


# instance fields
.field private depth:I

.field private indentStep:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_DATA:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;->theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-direct {p0, p1, p2, v0}, Lae/com/sun/xml/bind/marshaller/DataWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "_escapeHandler"    # Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 384
    sget-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->state:Ljava/lang/Object;

    .line 385
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->stateStack:Ljava/util/Stack;

    .line 387
    const-string v0, ""

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->indentStep:Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    .line 136
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
    .line 361
    iget v2, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    if-lez v2, :cond_0

    .line 362
    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->indentStep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 363
    .local v0, "ch":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    if-ge v1, v2, :cond_0

    .line 364
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lae/com/sun/xml/bind/marshaller/DataWriter;->characters([CII)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "ch":[C
    .end local v1    # "i":I
    :cond_0
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
    .line 340
    sget-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_DATA:Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->state:Ljava/lang/Object;

    .line 341
    invoke-super {p0, p1, p2, p3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->characters([CII)V

    .line 342
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 287
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/DataWriter;->write(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    invoke-super {p0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->endDocument()V

    .line 292
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 276
    iget v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    .line 277
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->state:Ljava/lang/Object;

    sget-object v1, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 278
    const-string v0, "\n"

    invoke-super {p0, v0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->characters(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lae/com/sun/xml/bind/marshaller/DataWriter;->doIndent()V

    .line 281
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->state:Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public getIndentStep()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->indentStep:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    .line 210
    sget-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->state:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->stateStack:Ljava/util/Stack;

    .line 212
    invoke-super {p0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->reset()V

    .line 213
    return-void
.end method

.method public setIndentStep(I)V
    .locals 2
    .param p1, "indentStep"    # I

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez p1, :cond_0

    .line 184
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/DataWriter;->setIndentStep(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public setIndentStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->indentStep:Ljava/lang/String;

    .line 190
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
    .line 244
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->stateStack:Ljava/util/Stack;

    sget-object v1, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lae/com/sun/xml/bind/marshaller/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->state:Ljava/lang/Object;

    .line 246
    iget v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    if-lez v0, :cond_0

    .line 247
    const-string v0, "\n"

    invoke-super {p0, v0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->characters(Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/marshaller/DataWriter;->doIndent()V

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 251
    iget v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lae/com/sun/xml/bind/marshaller/DataWriter;->depth:I

    .line 252
    return-void
.end method

.method protected writeXmlDecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "decl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeXmlDecl(Ljava/lang/String;)V

    .line 217
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/marshaller/DataWriter;->write(C)V

    .line 218
    return-void
.end method
