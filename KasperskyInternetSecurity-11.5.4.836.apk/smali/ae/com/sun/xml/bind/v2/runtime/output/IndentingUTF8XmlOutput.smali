.class public final Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
.source "IndentingUTF8XmlOutput.java"


# instance fields
.field private depth:I

.field private final indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

.field private seenText:Z

.field private final unitLen:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "indentStr"    # Ljava/lang/String;
    .param p3, "localNames"    # [Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .param p4, "escapeHandler"    # Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-direct {p0, p1, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;-><init>(Ljava/io/OutputStream;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 78
    iput v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->depth:I

    .line 80
    iput-boolean v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    .line 91
    if-eqz p2, :cond_0

    .line 92
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-direct {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-direct {v2}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 94
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget v3, v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->ensureSize(I)V

    .line 95
    iget v2, v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->len:I

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->unitLen:I

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 97
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    iget v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->unitLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->unitLen:I

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 100
    iput v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->unitLen:I

    .line 102
    :cond_1
    return-void
.end method

.method private indentEndTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->depth:I

    .line 138
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->closeStartTagPending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->printIndent()V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    .line 141
    return-void
.end method

.method private indentStartTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->closeStartTag()V

    .line 118
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->printIndent()V

    .line 120
    :cond_0
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->depth:I

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    .line 122
    return-void
.end method

.method private printIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->write(I)V

    .line 145
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->depth:I

    rem-int/lit8 v0, v1, 0x8

    .line 147
    .local v0, "i":I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->unitLen:I

    mul-int/2addr v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->write([BII)V

    .line 149
    shr-int/lit8 v0, v0, 0x3

    .line 151
    :goto_0
    if-lez v0, :cond_0

    .line 152
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indent8:Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    invoke-virtual {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->write(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V

    .line 151
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public beginStartTag(ILjava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indentStartTag()V

    .line 107
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->beginStartTag(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 0
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indentStartTag()V

    .line 113
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 114
    return-void
.end method

.method public endDocument(Z)V
    .locals 1
    .param p1, "fragment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 169
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->write(I)V

    .line 170
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->endDocument(Z)V

    .line 171
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indentEndTag()V

    .line 133
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->endTag(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V
    .locals 0
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->indentEndTag()V

    .line 127
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 128
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V
    .locals 1
    .param p1, "value"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p2, "needSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    .line 164
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    .line 165
    return-void
.end method

.method public text(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "needSP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/IndentingUTF8XmlOutput;->seenText:Z

    .line 158
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->text(Ljava/lang/String;Z)V

    .line 159
    return-void
.end method
