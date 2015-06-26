.class public Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;
.super Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;
.source "IndentingXMLStreamWriter.java"


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
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_NOTHING:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_DATA:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .param p1, "writer"    # Ljavax/xml/stream/XMLStreamWriter;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 55
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->stateStack:Ljava/util/Stack;

    .line 58
    const-string v0, "  "

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->indentStep:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    .line 63
    return-void
.end method

.method private doIndent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 139
    iget v1, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    if-lez v1, :cond_0

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->indentStep:Ljava/lang/String;

    invoke-super {p0, v1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private onEmptyElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 125
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    if-lez v0, :cond_0

    .line 126
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->doIndent()V

    .line 129
    return-void
.end method

.method private onEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    .line 116
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    sget-object v1, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 117
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->doIndent()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method private onStartElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->stateStack:Ljava/util/Stack;

    sget-object v1, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_ELEMENT:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_NOTHING:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 107
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    if-lez v0, :cond_0

    .line 108
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->doIndent()V

    .line 111
    iget v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->depth:I

    .line 112
    return-void
.end method


# virtual methods
.method public getIndentStep()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->indentStep:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setIndentStep(I)V
    .locals 2
    .param p1, "indentStep"    # I

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "s":Ljava/lang/StringBuilder;
    :goto_0
    if-lez p1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->setIndentStep(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setIndentStep(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->indentStep:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 207
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_DATA:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 208
    invoke-super {p0, p1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_DATA:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 198
    invoke-super {p0, p1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public writeCharacters([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->SEEN_DATA:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->state:Ljava/lang/Object;

    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters([CII)V

    .line 204
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onEmptyElement()V

    .line 188
    invoke-super {p0, p1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeEmptyElement(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onEmptyElement()V

    .line 178
    invoke-super {p0, p1, p2}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onEmptyElement()V

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public writeEndElement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onEndElement()V

    .line 193
    invoke-super {p0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeEndElement()V

    .line 194
    return-void
.end method

.method public writeStartDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeStartDocument()V

    .line 148
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    .line 153
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "\n"

    invoke-super {p0, v0}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onStartElement()V

    .line 163
    invoke-super {p0, p1}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onStartElement()V

    .line 168
    invoke-super {p0, p1, p2}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;->onStartElement()V

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
