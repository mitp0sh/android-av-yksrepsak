.class public interface abstract Lae/javax/xml/stream/util/XMLEventAllocator;
.super Ljava/lang/Object;
.source "XMLEventAllocator.java"


# virtual methods
.method public abstract allocate(Lae/javax/xml/stream/XMLStreamReader;)Lae/javax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract allocate(Lae/javax/xml/stream/XMLStreamReader;Lae/javax/xml/stream/util/XMLEventConsumer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract newInstance()Lae/javax/xml/stream/util/XMLEventAllocator;
.end method
