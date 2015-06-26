.class public interface abstract Lae/javax/xml/stream/XMLEventWriter;
.super Ljava/lang/Object;
.source "XMLEventWriter.java"

# interfaces
.implements Lae/javax/xml/stream/util/XMLEventConsumer;


# virtual methods
.method public abstract add(Lae/javax/xml/stream/XMLEventReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract add(Lae/javax/xml/stream/events/XMLEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
.end method

.method public abstract getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract setDefaultNamespace(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
