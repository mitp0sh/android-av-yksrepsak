.class public Lcom/sun/xml/txw2/output/StaxSerializer;
.super Ljava/lang/Object;
.source "StaxSerializer.java"

# interfaces
.implements Lcom/sun/xml/txw2/output/XmlSerializer;


# instance fields
.field private final out:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .param p1, "writer"    # Ljavax/xml/stream/XMLStreamWriter;

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/xml/txw2/output/StaxSerializer;-><init>(Ljavax/xml/stream/XMLStreamWriter;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;Z)V
    .locals 1
    .param p1, "writer"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "indenting"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    new-instance v0, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;

    invoke-direct {v0, p1}, Lcom/sun/xml/txw2/output/IndentingXMLStreamWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    .end local p1    # "writer":Ljavax/xml/stream/XMLStreamWriter;
    .local v0, "writer":Ljavax/xml/stream/XMLStreamWriter;
    move-object p1, v0

    .line 66
    .end local v0    # "writer":Ljavax/xml/stream/XMLStreamWriter;
    .restart local p1    # "writer":Ljavax/xml/stream/XMLStreamWriter;
    :cond_0
    iput-object p1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    .line 67
    return-void
.end method


# virtual methods
.method public beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p3, p2, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cdata(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public comment(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "comment"    # Ljava/lang/StringBuilder;

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endDocument()V
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 147
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method

.method public endTag()V
    .locals 2

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public text(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, p1, p2, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeXmlns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p2}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sun/xml/txw2/output/StaxSerializer;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/sun/xml/txw2/TxwException;

    invoke-direct {v1, v0}, Lcom/sun/xml/txw2/TxwException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
