.class public Lcom/sun/xml/txw2/output/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field private final EMPTY_ATTS:Lorg/xml/sax/Attributes;

.field private elementLevel:I

.field private encoding:Ljava/lang/String;

.field private final escapeHandler:Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

.field private header:Ljava/lang/String;

.field private inCDATA:Z

.field private final locallyDeclaredPrefix:Ljava/util/HashMap;

.field private output:Ljava/io/Writer;

.field private startTagIsClosed:Z

.field private writeXmlDecl:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v0, Lcom/sun/xml/txw2/output/DumbEscapeHandler;->theInstance:Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/xml/txw2/output/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lcom/sun/xml/txw2/output/CharacterEscapeHandler;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Lcom/sun/xml/txw2/output/CharacterEscapeHandler;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "_escapeHandler"    # Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    .line 1065
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    .line 1073
    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->inCDATA:Z

    .line 1074
    iput v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    .line 1077
    iput-boolean v2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->writeXmlDecl:Z

    .line 1083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->header:Ljava/lang/String;

    .line 1087
    iput-boolean v2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/sun/xml/txw2/output/XMLWriter;->init(Ljava/io/Writer;Ljava/lang/String;)V

    .line 307
    iput-object p3, p0, Lcom/sun/xml/txw2/output/XMLWriter;->escapeHandler:Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    .line 308
    return-void
.end method

.method private init(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/txw2/output/XMLWriter;->setOutput(Ljava/io/Writer;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private write(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 989
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method private writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1011
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 1012
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1013
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1014
    .local v0, "ch":[C
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 1015
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sun/xml/txw2/output/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1017
    const-string v3, "=\""

    invoke-direct {p0, v3}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 1018
    array-length v3, v0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v6, v3, v4}, Lcom/sun/xml/txw2/output/XMLWriter;->writeEsc([CIIZ)V

    .line 1019
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1021
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
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->escapeHandler:Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    iget-object v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sun/xml/txw2/output/CharacterEscapeHandler;->escape([CIIZLjava/io/Writer;)V

    .line 1040
    return-void
.end method

.method private writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "isElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-direct {p0, p3}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 1057
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
    .line 917
    :try_start_0
    iget-boolean v2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-nez v2, :cond_0

    .line 918
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 919
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 921
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 922
    .local v0, "ch":[C
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/xml/txw2/output/XMLWriter;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    return-void

    .line 923
    .end local v0    # "ch":[C
    :catch_0
    move-exception v1

    .line 924
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
    .line 634
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-nez v1, :cond_0

    .line 635
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 636
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 638
    :cond_0
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->inCDATA:Z

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 642
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 646
    return-void

    .line 641
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->writeEsc([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    const-string v2, "<!--"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 967
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
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
    .line 898
    const-string v1, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/sun/xml/txw2/output/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/xml/txw2/output/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 899
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
    .line 867
    const-string v3, ""

    iget-object v4, p0, Lcom/sun/xml/txw2/output/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/xml/txw2/output/XMLWriter;->dataElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 868
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
    .line 834
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/xml/txw2/output/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 835
    invoke-virtual {p0, p5}, Lcom/sun/xml/txw2/output/XMLWriter;->characters(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 956
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->inCDATA:Z

    .line 957
    const-string v1, "]]>"

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    return-void

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 933
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
    .line 487
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-nez v1, :cond_0

    .line 488
    const-string v1, "/>"

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 489
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 491
    :cond_0
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 492
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 494
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/xml/txw2/output/XMLWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 498
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 499
    .restart local v0    # "e":Ljava/io/IOException;
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
    .line 800
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
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
    .line 779
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/xml/txw2/output/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 597
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-eqz v1, :cond_1

    .line 598
    const-string v1, "</"

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 600
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 605
    :goto_0
    iget v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    if-ne v1, v2, :cond_0

    .line 606
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 608
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    .line 614
    return-void

    .line 602
    :cond_1
    const-string v1, "/>"

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
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
    .line 939
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 380
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
    .line 666
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->writeEsc([CIIZ)V

    .line 667
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
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

    .line 691
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-nez v1, :cond_0

    .line 692
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 695
    :cond_0
    const-string v1, "<?"

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 697
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 698
    invoke-direct {p0, p2}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 699
    const-string v1, "?>"

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 700
    iget v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    if-ge v1, v2, :cond_1

    .line 701
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 703
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 359
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->encoding:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "_header"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->header:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setOutput(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "_encoding"    # Ljava/lang/String;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    .line 397
    :goto_0
    iput-object p2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->encoding:Ljava/lang/String;

    .line 398
    return-void

    .line 395
    :cond_0
    iput-object p1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->output:Ljava/io/Writer;

    goto :goto_0
.end method

.method public setXmlDecl(Z)V
    .locals 0
    .param p1, "_writeXmlDecl"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->writeXmlDecl:Z

    .line 412
    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 943
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-nez v1, :cond_0

    .line 944
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 945
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    .line 947
    :cond_0
    const-string v1, "<![CDATA["

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 948
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->inCDATA:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
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
    .line 930
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
    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/xml/txw2/output/XMLWriter;->reset()V

    .line 455
    iget-boolean v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->writeXmlDecl:Z

    if-eqz v1, :cond_1

    .line 456
    const-string v0, ""

    .line 457
    .local v0, "e":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " encoding=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " standalone=\"yes\"?>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 463
    .end local v0    # "e":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->header:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->header:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 466
    :cond_2
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
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
    .line 758
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/sun/xml/txw2/output/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sun/xml/txw2/output/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 759
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
    .line 736
    const-string v0, ""

    iget-object v1, p0, Lcom/sun/xml/txw2/output/XMLWriter;->EMPTY_ATTS:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/xml/txw2/output/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 737
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
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
    .line 528
    :try_start_0
    iget-boolean v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z

    if-nez v5, :cond_0

    .line 529
    const-string v5, ">"

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 531
    :cond_0
    iget v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->elementLevel:I

    .line 534
    const/16 v5, 0x3c

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 535
    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->writeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 536
    invoke-direct {p0, p4}, Lcom/sun/xml/txw2/output/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 539
    iget-object v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 540
    iget-object v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 541
    .local v2, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 542
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 543
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 544
    .local v3, "p":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 545
    .local v4, "u":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 546
    const-string v4, ""

    .line 548
    :cond_1
    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V

    .line 549
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 550
    const-string v5, "xmlns=\""

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 556
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 557
    .local v0, "ch":[C
    const/4 v5, 0x0

    array-length v6, v0

    const/4 v7, 0x1

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/sun/xml/txw2/output/XMLWriter;->writeEsc([CIIZ)V

    .line 558
    const/16 v5, 0x22

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v0    # "ch":[C
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v2    # "itr":Ljava/util/Iterator;
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "u":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lorg/xml/sax/SAXException;

    invoke-direct {v5, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 552
    .local v1, "e":Ljava/util/Map$Entry;
    .restart local v2    # "itr":Ljava/util/Iterator;
    .restart local v3    # "p":Ljava/lang/String;
    .restart local v4    # "u":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "xmlns:"

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 553
    invoke-direct {p0, v3}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    .line 554
    const-string v5, "=\""

    invoke-direct {p0, v5}, Lcom/sun/xml/txw2/output/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 560
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "u":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 567
    .end local v2    # "itr":Ljava/util/Iterator;
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 568
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sun/xml/txw2/output/XMLWriter;->startTagIsClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 572
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
    .line 936
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
    .line 431
    iget-object v0, p0, Lcom/sun/xml/txw2/output/XMLWriter;->locallyDeclaredPrefix:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method
