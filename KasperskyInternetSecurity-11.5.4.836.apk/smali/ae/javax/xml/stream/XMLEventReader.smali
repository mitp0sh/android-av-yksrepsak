.class public interface abstract Lae/javax/xml/stream/XMLEventReader;
.super Ljava/lang/Object;
.source "XMLEventReader.java"

# interfaces
.implements Ljava/util/Iterator;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getElementText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract hasNext()Z
.end method

.method public abstract nextEvent()Lae/javax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract nextTag()Lae/javax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract peek()Lae/javax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
