.class abstract Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
.super Ljava/lang/Object;
.source "StAXConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;
    }
.end annotation


# instance fields
.field protected final context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

.field protected final predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

.field protected final tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

.field protected final visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;


# direct methods
.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->tagName:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .line 74
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .line 75
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->context:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    .line 76
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    .line 77
    return-void
.end method

.method protected static fixNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p0, :cond_0

    const-string p0, ""

    .line 116
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract bridge()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method protected abstract getCurrentLocation()Lae/javax/xml/stream/Location;
.end method

.method protected abstract getCurrentQName()Ljava/lang/String;
.end method

.method protected final getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    .end local p2    # "localName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "localName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected final handleEndDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endDocument()V

    .line 112
    return-void
.end method

.method protected final handleStartDocument(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 2
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->visitor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;)V

    invoke-interface {v0, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V

    .line 108
    return-void
.end method
