.class public Lcom/sun/xml/txw2/output/DataWriter;
.super Lcom/sun/xml/txw2/output/XMLWriter;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    .line 372
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_DATA:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 143
    const/4 v0, 0x0

    sget-object v1, Lcom/sun/xml/txw2/output/DumbEscapeHandler;->theInstance:Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/xml/txw2/output/DataWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lcom/sun/xml/txw2/output/CharacterEscapeHandler;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-object v0, Lcom/sun/xml/txw2/output/DumbEscapeHandler;->theInstance:Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/xml/txw2/output/DataWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lcom/sun/xml/txw2/output/CharacterEscapeHandler;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Lcom/sun/xml/txw2/output/CharacterEscapeHandler;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "_escapeHandler"    # Lcom/sun/xml/txw2/output/CharacterEscapeHandler;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/XMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Lcom/sun/xml/txw2/output/CharacterEscapeHandler;)V

    .line 381
    sget-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->state:Ljava/lang/Object;

    .line 382
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->stateStack:Ljava/util/Stack;

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->indentStep:Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    .line 135
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
    .line 358
    iget v2, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    if-lez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/sun/xml/txw2/output/DataWriter;->indentStep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 360
    .local v0, "ch":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    if-ge v1, v2, :cond_0

    .line 361
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/sun/xml/txw2/output/DataWriter;->characters([CII)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
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
    .line 329
    sget-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_DATA:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->state:Ljava/lang/Object;

    .line 330
    invoke-super {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/XMLWriter;->characters([CII)V

    .line 331
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
    .line 334
    iget v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    if-lez v0, :cond_0

    .line 335
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/XMLWriter;->characters(Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/DataWriter;->doIndent()V

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/XMLWriter;->comment([CII)V

    .line 339
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
    .line 273
    iget v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    .line 274
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->state:Ljava/lang/Object;

    sget-object v1, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 275
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/XMLWriter;->characters(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/DataWriter;->doIndent()V

    .line 278
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->state:Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public getIndentStep()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->indentStep:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    .line 212
    sget-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->state:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->stateStack:Ljava/util/Stack;

    .line 214
    invoke-super {p0}, Lcom/sun/xml/txw2/output/XMLWriter;->reset()V

    .line 215
    return-void
.end method

.method public setIndentStep(I)V
    .locals 2
    .param p1, "indentStep"    # I

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "s":Ljava/lang/StringBuilder;
    :goto_0
    if-lez p1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/xml/txw2/output/DataWriter;->setIndentStep(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setIndentStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sun/xml/txw2/output/DataWriter;->indentStep:Ljava/lang/String;

    .line 192
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
    .line 241
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->stateStack:Ljava/util/Stack;

    sget-object v1, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/sun/xml/txw2/output/DataWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->state:Ljava/lang/Object;

    .line 243
    iget v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    if-lez v0, :cond_0

    .line 244
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/XMLWriter;->characters(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/DataWriter;->doIndent()V

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/xml/txw2/output/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 248
    iget v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/xml/txw2/output/DataWriter;->depth:I

    .line 249
    return-void
.end method
