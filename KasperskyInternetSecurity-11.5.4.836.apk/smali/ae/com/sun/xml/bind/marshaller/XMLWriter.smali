.class public Lae/com/sun/xml/bind/marshaller/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"


# instance fields
.field private final EMPTY_ATTS:Lorg/xml/sax/Attributes;

.field private elementLevel:I

.field private encoding:Ljava/lang/String;

.field private final escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

.field private header:Ljava/lang/String;

.field private final locallyDeclaredPrefix:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private output:Ljava/io/Writer;

.field private startTagIsClosed:Z

.field private writeXmlDecl:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 299
    sget-object v0, Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;->theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    invoke-direct {p0, p1, p2, v0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "_escapeHandler"    # Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .prologue
    const/4 v1, 0x1

    .line 293
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    .line 967
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    .line 978
    iput-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeXmlDecl:Z

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->header:Ljava/lang/String;

    .line 988
    iput-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    .line 294
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->init(Ljava/io/Writer;Ljava/lang/String;)V

    .line 295
    iput-object p3, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .line 296
    return-void
.end method

.method private init(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->setOutput(Ljava/io/Writer;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 935
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 936
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 937
    .local v0, "ch":[C
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 938
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 939
    const-string v3, "=\""

    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 940
    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeEsc([CIIZ)V

    .line 941
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "ch":[C
    :cond_0
    return-void
.end method

.method private writeEsc([CIIZ)V
    .locals 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isAttVal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->escapeHandler:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    iget-object v5, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->output:Ljava/io/Writer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;->escape([CIIZLjava/io/Writer;)V

    .line 959
    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 888
    :try_start_0
    iget-boolean v2, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    if-nez v2, :cond_0

    .line 889
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 890
    const/4 v2, 0x1

    iput-boolean v2, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    .line 892
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 893
    .local v0, "ch":[C
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    return-void

    .line 894
    .end local v0    # "ch":[C
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 608
    :try_start_0
    iget-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    if-nez v1, :cond_0

    .line 609
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    .line 612
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeEsc([CIIZ)V

    .line 613
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 869
    const-string v1, ""

    const-string v3, ""

    iget-object v4, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 838
    const-string v3, ""

    iget-object v4, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .param p5, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 806
    invoke-virtual {p0, p5}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->characters(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
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
    .line 475
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 476
    invoke-virtual {p0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 771
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 750
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
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
    .line 574
    :try_start_0
    iget-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "</"

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 577
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 582
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    .line 588
    return-void

    .line 579
    :cond_0
    const-string v1, "/>"

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 368
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeEsc([CIIZ)V

    .line 638
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    const/4 v2, 0x1

    .line 662
    :try_start_0
    iget-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    if-nez v1, :cond_0

    .line 663
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    .line 666
    :cond_0
    const-string v1, "<?"

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 668
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 669
    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 670
    const-string v1, "?>"

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 671
    iget v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    if-ge v1, v2, :cond_1

    .line 672
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 674
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    .line 347
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "_header"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->header:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setOutput(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "_encoding"    # Ljava/lang/String;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->output:Ljava/io/Writer;

    .line 385
    :goto_0
    iput-object p2, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->encoding:Ljava/lang/String;

    .line 386
    return-void

    .line 383
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->output:Ljava/io/Writer;

    goto :goto_0
.end method

.method public setXmlDecl(Z)V
    .locals 0
    .param p1, "_writeXmlDecl"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeXmlDecl:Z

    .line 396
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->reset()V

    .line 439
    iget-boolean v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeXmlDecl:Z

    if-eqz v1, :cond_1

    .line 440
    const-string v0, ""

    .line 441
    .local v0, "e":Ljava/lang/String;
    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " encoding=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " standalone=\"yes\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeXmlDecl(Ljava/lang/String;)V

    .line 447
    .end local v0    # "e":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->header:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->header:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 450
    :cond_2
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 729
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 730
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 707
    const-string v0, ""

    iget-object v1, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 708
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
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
    .line 507
    :try_start_0
    iget-boolean v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z

    if-nez v6, :cond_0

    .line 508
    const-string v6, ">"

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 510
    :cond_0
    iget v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->elementLevel:I

    .line 513
    const/16 v6, 0x3c

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 514
    invoke-virtual {p0, p3}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, p4}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 518
    iget-object v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 519
    iget-object v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 520
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 521
    .local v4, "p":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 522
    .local v5, "u":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 523
    const-string v5, ""

    .line 525
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V

    .line 526
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 527
    const-string v6, "xmlns=\""

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 533
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 534
    .local v0, "ch":[C
    const/4 v6, 0x0

    array-length v7, v0

    const/4 v8, 0x1

    invoke-direct {p0, v0, v6, v7, v8}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->writeEsc([CIIZ)V

    .line 535
    const/16 v6, 0x22

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    .end local v0    # "ch":[C
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "u":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 529
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "p":Ljava/lang/String;
    .restart local v5    # "u":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "xmlns:"

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, v4}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 531
    const-string v6, "=\""

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 537
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "u":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 544
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 545
    const/4 v6, 0x0

    iput-boolean v6, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->startTagIsClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 549
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method protected final write(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 915
    return-void
.end method

.method protected final write(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lae/com/sun/xml/bind/marshaller/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method protected writeXmlDecl(Ljava/lang/String;)V
    .locals 0
    .param p1, "decl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/marshaller/XMLWriter;->write(Ljava/lang/String;)V

    .line 458
    return-void
.end method
