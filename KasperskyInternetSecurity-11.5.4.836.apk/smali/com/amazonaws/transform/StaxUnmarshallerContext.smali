.class public Lcom/amazonaws/transform/StaxUnmarshallerContext;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    }
.end annotation


# instance fields
.field private attributeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

.field private final eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadataExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;",
            ">;"
        }
    .end annotation
.end field

.field public final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stackString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 1
    .param p1, "eventReader"    # Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;Ljava/util/Map;)V
    .locals 1
    .param p1, "eventReader"    # Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/javax/xml/stream/XMLEventReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 74
    iput-object p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private updateContext(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .prologue
    .line 271
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 275
    const-string v3, ""

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 276
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_1

    .line 279
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_3
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 283
    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    .line 284
    .local v0, "attribute":Lcom/amazonaws/javax/xml/stream/events/Attribute;
    const-string v3, ""

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    .restart local v2    # "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto :goto_2

    .line 288
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentDepth()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public isStartOfDocument()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v0

    return v0
.end method

.method public nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->attributeIterator:Ljava/util/Iterator;

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-direct {p0, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->updateContext(Lcom/amazonaws/javax/xml/stream/events/XMLEvent;)V

    .line 206
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v2

    .line 208
    .local v2, "nextEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    .line 210
    .local v1, "metadataExpression":Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    iget-object v3, v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    iget v4, v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->targetDepth:I

    invoke-virtual {p0, v3, v4}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadata:Ljava/util/Map;

    iget-object v4, v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    invoke-interface {v2}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metadataExpression":Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
    .end local v2    # "nextEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    :cond_2
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    return-object v3
.end method

.method public readText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->currentEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    .line 102
    .local v0, "attribute":Lcom/amazonaws/javax/xml/stream/events/Attribute;
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 112
    .end local v0    # "attribute":Lcom/amazonaws/javax/xml/stream/events/Attribute;
    :goto_0
    return-object v3

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->peek()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 108
    .local v1, "event":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 109
    iget-object v3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->eventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/XMLEventReader;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    .line 110
    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    :cond_1
    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 114
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered unexpected event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "targetDepth"    # I
    .param p3, "storageKey"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->metadataExpressions:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;-><init>(Lcom/amazonaws/transform/StaxUnmarshallerContext;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public testExpression(Ljava/lang/String;)Z
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public testExpression(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "startingStackDepth"    # I

    .prologue
    const/4 v1, 0x1

    .line 159
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    const/4 v0, -0x1

    .line 162
    .local v0, "index":I
    :cond_2
    :goto_1
    const-string v2, "/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 164
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    .line 165
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext;->stackString:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
