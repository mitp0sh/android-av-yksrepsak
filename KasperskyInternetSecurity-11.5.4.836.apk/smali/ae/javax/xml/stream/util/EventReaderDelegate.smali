.class public Lae/javax/xml/stream/util/EventReaderDelegate;
.super Ljava/lang/Object;
.source "EventReaderDelegate.java"

# interfaces
.implements Lae/javax/xml/stream/XMLEventReader;


# instance fields
.field private reader:Lae/javax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lae/javax/xml/stream/XMLEventReader;)V
    .locals 0
    .param p1, "reader"    # Lae/javax/xml/stream/XMLEventReader;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    .line 40
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
    .line 82
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->close()V

    .line 83
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lae/javax/xml/stream/XMLEventReader;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

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
    .line 100
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0, p1}, Lae/javax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextEvent()Lae/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->nextEvent()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Lae/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->nextTag()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lae/javax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->peek()Lae/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lae/javax/xml/stream/XMLEventReader;->remove()V

    .line 105
    return-void
.end method

.method public setParent(Lae/javax/xml/stream/XMLEventReader;)V
    .locals 0
    .param p1, "reader"    # Lae/javax/xml/stream/XMLEventReader;

    .prologue
    .line 47
    iput-object p1, p0, Lae/javax/xml/stream/util/EventReaderDelegate;->reader:Lae/javax/xml/stream/XMLEventReader;

    .line 48
    return-void
.end method
