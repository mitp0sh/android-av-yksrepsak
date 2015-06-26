.class public interface abstract Lae/javax/xml/stream/events/XMLEvent;
.super Ljava/lang/Object;
.source "XMLEvent.java"

# interfaces
.implements Lae/javax/xml/stream/XMLStreamConstants;


# virtual methods
.method public abstract asCharacters()Lae/javax/xml/stream/events/Characters;
.end method

.method public abstract asEndElement()Lae/javax/xml/stream/events/EndElement;
.end method

.method public abstract asStartElement()Lae/javax/xml/stream/events/StartElement;
.end method

.method public abstract getEventType()I
.end method

.method public abstract getLocation()Lae/javax/xml/stream/Location;
.end method

.method public abstract getSchemaType()Ljavax/xml/namespace/QName;
.end method

.method public abstract isAttribute()Z
.end method

.method public abstract isCharacters()Z
.end method

.method public abstract isEndDocument()Z
.end method

.method public abstract isEndElement()Z
.end method

.method public abstract isEntityReference()Z
.end method

.method public abstract isNamespace()Z
.end method

.method public abstract isProcessingInstruction()Z
.end method

.method public abstract isStartDocument()Z
.end method

.method public abstract isStartElement()Z
.end method

.method public abstract writeAsEncodedUnicode(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
