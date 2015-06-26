.class abstract Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;
.super Ljava/lang/Object;
.source "DelegatingXMLStreamWriter.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# instance fields
.field private final writer:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .param p1, "writer"    # Ljavax/xml/stream/XMLStreamWriter;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    .line 93
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 97
    return-void
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .param p1, "context"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 177
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
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
    .line 132
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 133
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
    .line 156
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 157
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
    .line 160
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 161
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 1
    .param p1, "dtd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public writeEndDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 89
    return-void
.end method

.method public writeEndElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 85
    return-void
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
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
    .line 144
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 145
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
    .line 148
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    .line 149
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
    .line 152
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sun/xml/txw2/output/DelegatingXMLStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
