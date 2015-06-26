.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
.source "StAXEventConnector.java"


# instance fields
.field private final attrs:Lorg/xml/sax/helpers/AttributesImpl;

.field private final buffer:Ljava/lang/StringBuilder;

.field private event:Lae/javax/xml/stream/events/XMLEvent;

.field private seenText:Z

.field private final staxEventReader:Lae/javax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Lae/javax/xml/stream/XMLEventReader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V
    .locals 1
    .param p1, "staxCore"    # Lae/javax/xml/stream/XMLEventReader;
    .param p2, "visitor"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .prologue
    .line 102
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .line 82
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->buffer:Ljava/lang/StringBuilder;

    .line 103
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    .line 104
    return-void
.end method

.method private getAttributes(Lae/javax/xml/stream/events/StartElement;)Lorg/xml/sax/Attributes;
    .locals 11
    .param p1, "event"    # Lae/javax/xml/stream/events/StartElement;

    .prologue
    .line 275
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 282
    invoke-interface {p1}, Lae/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lae/javax/xml/stream/events/Attribute;

    .line 285
    .local v9, "staxAttr":Lae/javax/xml/stream/events/Attribute;
    invoke-interface {v9}, Lae/javax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    .line 286
    .local v7, "name":Ljavax/xml/namespace/QName;
    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "prefix":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    move-object v3, v2

    .line 294
    .local v3, "qName":Ljava/lang/String;
    :goto_1
    invoke-interface {v9}, Lae/javax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "type":Ljava/lang/String;
    invoke-interface {v9}, Lae/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "value":Ljava/lang/String;
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v3    # "qName":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "qName":Ljava/lang/String;
    goto :goto_1

    .line 300
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "qName":Ljava/lang/String;
    .end local v7    # "name":Ljavax/xml/namespace/QName;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "staxAttr":Lae/javax/xml/stream/events/Attribute;
    :cond_2
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->attrs:Lorg/xml/sax/helpers/AttributesImpl;

    return-object v0
.end method

.method private handleCharacters(Lae/javax/xml/stream/events/Characters;)V
    .locals 3
    .param p1, "event"    # Lae/javax/xml/stream/events/Characters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->seenText:Z

    .line 180
    :goto_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLEventReader;->peek()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 181
    .local v0, "next":Lae/javax/xml/stream/events/XMLEvent;
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->isIgnorable(Lae/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->isTag(Lae/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {p1}, Lae/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLEventReader;->nextEvent()Lae/javax/xml/stream/events/XMLEvent;

    goto :goto_1

    .line 194
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lae/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLEventReader;->peek()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->isIgnorable(Lae/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->isTag(Lae/javax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->buffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLEventReader;->nextEvent()Lae/javax/xml/stream/events/XMLEvent;

    goto :goto_2

    .line 211
    :cond_4
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lae/javax/xml/stream/events/XMLEvent;->asCharacters()Lae/javax/xml/stream/events/Characters;

    move-result-object v2

    invoke-interface {v2}, Lae/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Lae/javax/xml/stream/XMLEventReader;->nextEvent()Lae/javax/xml/stream/events/XMLEvent;

    goto :goto_2
.end method

.method private handleEndElement(Lae/javax/xml/stream/events/EndElement;)V
    .locals 5
    .param p1, "event"    # Lae/javax/xml/stream/events/EndElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->seenText:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    const-string v4, ""

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    invoke-interface {p1}, Lae/javax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 233
    .local v2, "qName":Ljavax/xml/namespace/QName;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 238
    invoke-interface {p1}, Lae/javax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lae/javax/xml/stream/events/Namespace;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/javax/xml/stream/events/Namespace;

    invoke-interface {v3}, Lae/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v3, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->seenText:Z

    .line 244
    return-void
.end method

.method private handleStartElement(Lae/javax/xml/stream/events/StartElement;)V
    .locals 7
    .param p1, "event"    # Lae/javax/xml/stream/events/StartElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p1}, Lae/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/javax/xml/stream/events/Namespace;

    .line 250
    .local v2, "ns":Lae/javax/xml/stream/events/Namespace;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v2}, Lae/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lae/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v2    # "ns":Lae/javax/xml/stream/events/Namespace;
    :cond_0
    invoke-interface {p1}, Lae/javax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    .line 257
    .local v3, "qName":Ljavax/xml/namespace/QName;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 258
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "localName":Ljava/lang/String;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 260
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    iput-object v1, v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->getAttributes(Lae/javax/xml/stream/events/StartElement;)Lorg/xml/sax/Attributes;

    move-result-object v5

    iput-object v5, v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    .line 262
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    invoke-interface {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 264
    const/4 v4, 0x0

    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->seenText:Z

    .line 265
    return-void
.end method

.method private isIgnorable(Lae/javax/xml/stream/events/XMLEvent;)Z
    .locals 2
    .param p1, "event"    # Lae/javax/xml/stream/events/XMLEvent;

    .prologue
    .line 222
    invoke-interface {p1}, Lae/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    .line 223
    .local v0, "eventType":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTag(Lae/javax/xml/stream/events/XMLEvent;)Z
    .locals 3
    .param p1, "event"    # Lae/javax/xml/stream/events/XMLEvent;

    .prologue
    const/4 v1, 0x1

    .line 217
    invoke-interface {p1}, Lae/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    .line 218
    .local v0, "eventType":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "depth":I
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v2}, Lae/javax/xml/stream/XMLEventReader;->peek()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    .line 114
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lae/javax/xml/stream/XMLStreamException;

    invoke-direct {v2, v1}, Lae/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 119
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v2}, Lae/javax/xml/stream/XMLEventReader;->nextEvent()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    .line 120
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->asStartElement()Lae/javax/xml/stream/events/StartElement;

    move-result-object v2

    invoke-interface {v2}, Lae/javax/xml/stream/events/StartElement;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->handleStartDocument(Ljavax/xml/namespace/NamespaceContext;)V

    .line 129
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 147
    :cond_1
    :goto_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->staxEventReader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v2}, Lae/javax/xml/stream/XMLEventReader;->nextEvent()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 131
    :sswitch_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->asStartElement()Lae/javax/xml/stream/events/StartElement;

    move-result-object v2

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->handleStartElement(Lae/javax/xml/stream/events/StartElement;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    goto :goto_1

    .line 135
    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 136
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->asEndElement()Lae/javax/xml/stream/events/EndElement;

    move-result-object v2

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->handleEndElement(Lae/javax/xml/stream/events/EndElement;)V

    .line 137
    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->handleEndDocument()V

    .line 151
    const/4 v2, 0x0

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    .line 155
    return-void

    .line 142
    :sswitch_2
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v2}, Lae/javax/xml/stream/events/XMLEvent;->asCharacters()Lae/javax/xml/stream/events/Characters;

    move-result-object v2

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->handleCharacters(Lae/javax/xml/stream/events/Characters;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_2
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method protected getCurrentLocation()Lae/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v0}, Lae/javax/xml/stream/events/XMLEvent;->getLocation()Lae/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentQName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v1}, Lae/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v1}, Lae/javax/xml/stream/events/XMLEvent;->asEndElement()Lae/javax/xml/stream/events/EndElement;

    move-result-object v1

    invoke-interface {v1}, Lae/javax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 167
    .local v0, "qName":Ljavax/xml/namespace/QName;
    :goto_0
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "qName":Ljavax/xml/namespace/QName;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXEventConnector;->event:Lae/javax/xml/stream/events/XMLEvent;

    invoke-interface {v1}, Lae/javax/xml/stream/events/XMLEvent;->asStartElement()Lae/javax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v1}, Lae/javax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .restart local v0    # "qName":Ljavax/xml/namespace/QName;
    goto :goto_0
.end method
