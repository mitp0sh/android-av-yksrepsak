.class public Lae/javax/xml/stream/util/StreamReaderDelegate;
.super Ljava/lang/Object;
.source "StreamReaderDelegate.java"

# interfaces
.implements Lae/javax/xml/stream/XMLStreamReader;


# instance fields
.field private reader:Lae/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lae/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .param p1, "reader"    # Lae/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->close()V

    .line 91
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Lae/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lae/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lae/javax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 1
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3, p4}, Lae/javax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v0

    return v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v0

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3}, Lae/javax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setParent(Lae/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .param p1, "reader"    # Lae/javax/xml/stream/XMLStreamReader;

    .prologue
    .line 46
    iput-object p1, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    .line 47
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lae/javax/xml/stream/util/StreamReaderDelegate;->reader:Lae/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    return v0
.end method
