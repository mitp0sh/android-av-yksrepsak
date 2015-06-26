.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;
.super Ljava/lang/Object;
.source "SAXConnector.java"

# interfaces
.implements Lae/javax/xml/bind/UnmarshallerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$1;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

.field private loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

.field private final next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

.field private final predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

.field private final tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V
    .locals 2
    .param p1, "next"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .param p2, "externalLocator"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->buffer:Ljava/lang/StringBuilder;

    .line 79
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$1;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    .line 88
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .line 89
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .line 90
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    .line 91
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    .line 92
    return-void
.end method

.method private processText(Z)V
    .locals 2
    .param p1, "ignorable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endDocument()V

    .line 115
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->processText(Z)V

    .line 155
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->uri:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->local:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p3, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->qname:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 159
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endPrefixMapping(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ignorableWhitespace([CII)V
    .locals 0
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->characters([CII)V

    .line 169
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 103
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;

    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorExWrapper;-><init>(Lorg/xml/sax/Locator;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->loc:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V

    .line 111
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    const-string p1, ""

    .line 129
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 130
    :cond_2
    move-object p2, p3

    .line 131
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 132
    :cond_4
    move-object p3, p2

    .line 135
    :cond_5
    const/4 v0, 0x1

    .line 140
    .local v0, "ignorable":Z
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getStructureLoader()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;

    move-result-object v1

    .local v1, "sl":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
    if-eqz v1, :cond_6

    .line 141
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->getBeanInfo()Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->hasElementOnlyContentModel()Z

    move-result v0

    .line 144
    :cond_6
    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->processText(Z)V

    .line 146
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p1, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->uri:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p2, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->local:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->qname:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    iput-object p4, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->atts:Lorg/xml/sax/Attributes;

    .line 150
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 151
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
