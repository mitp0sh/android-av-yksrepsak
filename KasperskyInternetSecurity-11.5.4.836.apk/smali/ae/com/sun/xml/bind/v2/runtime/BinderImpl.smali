.class public Lae/com/sun/xml/bind/v2/runtime/BinderImpl;
.super Lae/javax/xml/bind/Binder;
.source "BinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XmlNode:",
        "Ljava/lang/Object;",
        ">",
        "Lae/javax/xml/bind/Binder",
        "<TXmlNode;>;"
    }
.end annotation


# instance fields
.field private final assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/AssociationMap",
            "<TXmlNode;>;"
        }
    .end annotation
.end field

.field private final context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field private marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

.field private final scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/unmarshaller/InfosetScanner",
            "<TXmlNode;>;"
        }
    .end annotation
.end field

.field private unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;)V
    .locals 1
    .param p1, "_context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/unmarshaller/InfosetScanner",
            "<TXmlNode;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p2, "scanner":Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;, "Lae/com/sun/xml/bind/unmarshaller/InfosetScanner<TXmlNode;>;"
    invoke-direct {p0}, Lae/javax/xml/bind/Binder;-><init>()V

    .line 96
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .line 99
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 100
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    .line 101
    return-void
.end method

.method private associativeUnmarshal(Ljava/lang/Object;ZLjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p2, "inplace"    # Z
    .param p3, "expectedType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;Z",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p1, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    if-nez p1, :cond_0

    .line 151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz p3, :cond_1

    .line 155
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 157
    :cond_1
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    invoke-virtual {v3, v4, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshallerHandler(Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;ZLae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V

    .line 159
    .local v2, "handler":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    invoke-interface {v5}, Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 161
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->scanner:Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;

    invoke-interface {v3, p1}, Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;->scan(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v3

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getResult()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lorg/xml/sax/SAXException;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v3, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->createUnmarshalException(Lorg/xml/sax/SAXException;)Lae/javax/xml/bind/UnmarshalException;

    move-result-object v3

    throw v3
.end method

.method private createOutput(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p1, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;

    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-direct {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;-><init>(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V

    return-object v0
.end method

.method private excludeProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    const-string v0, "ae.com.sun.xml.bind.characterEscapeHandler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ae.com.sun.xml.bind.xmlDeclaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ae.com.sun.xml.bind.xmlHeaders"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    .locals 3

    .prologue
    .line 110
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 112
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    return-object v0
.end method

.method private getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .locals 3

    .prologue
    .line 104
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 106
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->unmarshaller:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    return-object v0
.end method


# virtual methods
.method public getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public getJAXBNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p1, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    if-nez p1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 180
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byElement(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    move-result-object v0

    .line 181
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    .line 182
    :cond_1
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    if-nez p1, :cond_0

    .line 227
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_PROPERTY_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->excludeProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    new-instance v4, Lae/javax/xml/bind/PropertyException;

    invoke-direct {v4, p1}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_1
    const/4 v2, 0x0

    .line 235
    .local v2, "prop":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 238
    .local v1, "pe":Lae/javax/xml/bind/PropertyException;
    :try_start_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/PropertyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 246
    .end local v2    # "prop":Ljava/lang/Object;
    .local v3, "prop":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 240
    .end local v3    # "prop":Ljava/lang/Object;
    .restart local v2    # "prop":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "p":Lae/javax/xml/bind/PropertyException;
    move-object v1, v0

    .line 245
    :try_start_1
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lae/javax/xml/bind/PropertyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v3, v2

    .line 246
    .end local v2    # "prop":Ljava/lang/Object;
    .restart local v3    # "prop":Ljava/lang/Object;
    goto :goto_0

    .line 247
    .end local v3    # "prop":Ljava/lang/Object;
    .restart local v2    # "prop":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 248
    move-object v1, v0

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lae/javax/xml/bind/PropertyException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 252
    throw v1
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getXMLNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "jaxbObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TXmlNode;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    if-nez p1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 172
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->byPeer(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    move-result-object v0

    .line 173
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public marshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "jaxbObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TXmlNode;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p2, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 118
    :cond_1
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->createOutput(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->marshal(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V

    .line 119
    return-void
.end method

.method public setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lae/javax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V

    .line 218
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->setEventHandler(Lae/javax/xml/bind/ValidationEventHandler;)V

    .line 219
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    if-nez p1, :cond_0

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_PROPERTY_NAME:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->excludeProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    new-instance v2, Lae/javax/xml/bind/PropertyException;

    invoke-direct {v2, p1, p2}, Lae/javax/xml/bind/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2

    .line 264
    :cond_1
    const/4 v1, 0x0

    .line 267
    .local v1, "pe":Lae/javax/xml/bind/PropertyException;
    :try_start_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/javax/xml/bind/PropertyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "p":Lae/javax/xml/bind/PropertyException;
    move-object v1, v0

    .line 274
    :try_start_1
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lae/javax/xml/bind/PropertyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    .line 277
    move-object v1, v0

    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/javax/xml/bind/PropertyException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 283
    throw v1
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 1
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 141
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 142
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 143
    return-void
.end method

.method public unmarshal(Ljava/lang/Object;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TXmlNode;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p1, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 137
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->associativeUnmarshal(Ljava/lang/Object;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    return-object v0
.end method

.method public unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p1, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->associativeUnmarshal(Ljava/lang/Object;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateJAXB(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TXmlNode;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p1, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->associativeUnmarshal(Ljava/lang/Object;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateXML(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "jaxbObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TXmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getXMLNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->updateXML(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateXML(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "jaxbObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TXmlNode;)TXmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/BinderImpl;, "Lae/com/sun/xml/bind/v2/runtime/BinderImpl<TXmlNode;>;"
    .local p2, "xmlNode":Ljava/lang/Object;, "TXmlNode;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    move-object v1, p2

    .line 196
    check-cast v1, Lorg/w3c/dom/Element;

    .line 197
    .local v1, "e":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 198
    .local v4, "ns":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 199
    .local v5, "p":Lorg/w3c/dom/Node;
    invoke-interface {v5, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 203
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 204
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isElement()Z

    move-result v6

    if-nez v6, :cond_2

    .line 205
    new-instance v2, Lae/javax/xml/bind/JAXBElement;

    new-instance v6, Ljavax/xml/namespace/QName;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-direct {v2, v6, v7, p1}, Lae/javax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Object;)V

    .local v2, "jaxbObject":Lae/javax/xml/bind/JAXBElement;
    move-object p1, v2

    .line 208
    .end local v2    # "jaxbObject":Lae/javax/xml/bind/JAXBElement;
    :cond_2
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;->getMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V

    .line 209
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 210
    .local v3, "newNode":Lorg/w3c/dom/Node;
    invoke-interface {v5, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 211
    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 213
    return-object v3
.end method
