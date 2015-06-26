.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;
.super Ljava/lang/Object;
.source "InterningXmlVisitor.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$1;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;
    }
.end annotation


# instance fields
.field private final attributes:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;

.field private final next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V
    .locals 2
    .param p1, "next"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$1;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->attributes:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;

    .line 59
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .line 60
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endDocument()V

    .line 68
    return-void
.end method

.method public endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 82
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endPrefixMapping(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    return-object v0
.end method

.method public getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    move-result-object v0

    return-object v0
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .param p1, "locator"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .param p2, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V

    .line 64
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 2
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->attributes:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 72
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->attributes:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    .line 73
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 76
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "nsUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public text(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pcdata"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
