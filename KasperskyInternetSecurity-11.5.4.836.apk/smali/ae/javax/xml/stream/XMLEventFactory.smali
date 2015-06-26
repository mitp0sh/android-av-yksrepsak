.class public abstract Lae/javax/xml/stream/XMLEventFactory;
.super Ljava/lang/Object;
.source "XMLEventFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lae/javax/xml/stream/XMLEventFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "ae.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Lae/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lae/javax/xml/stream/XMLEventFactory;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "com.bea.xml.stream.EventFactory"

    invoke-static {p0, v0, p1}, Lae/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method


# virtual methods
.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Lae/javax/xml/stream/events/Attribute;
.end method

.method public abstract createCData(Ljava/lang/String;)Lae/javax/xml/stream/events/Characters;
.end method

.method public abstract createCharacters(Ljava/lang/String;)Lae/javax/xml/stream/events/Characters;
.end method

.method public abstract createComment(Ljava/lang/String;)Lae/javax/xml/stream/events/Comment;
.end method

.method public abstract createDTD(Ljava/lang/String;)Lae/javax/xml/stream/events/DTD;
.end method

.method public abstract createEndDocument()Lae/javax/xml/stream/events/EndDocument;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lae/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Lae/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEntityReference(Ljava/lang/String;Lae/javax/xml/stream/events/EntityDeclaration;)Lae/javax/xml/stream/events/EntityReference;
.end method

.method public abstract createIgnorableSpace(Ljava/lang/String;)Lae/javax/xml/stream/events/Characters;
.end method

.method public abstract createNamespace(Ljava/lang/String;)Lae/javax/xml/stream/events/Namespace;
.end method

.method public abstract createNamespace(Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/Namespace;
.end method

.method public abstract createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/ProcessingInstruction;
.end method

.method public abstract createSpace(Ljava/lang/String;)Lae/javax/xml/stream/events/Characters;
.end method

.method public abstract createStartDocument()Lae/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;)Lae/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lae/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lae/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lae/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Lae/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lae/javax/xml/stream/events/StartElement;
.end method

.method public abstract setLocation(Lae/javax/xml/stream/Location;)V
.end method
