.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;
.super Ljava/lang/Object;
.source "MTOMDecorator.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;


# instance fields
.field private final au:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

.field private final base64data:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

.field private followXop:Z

.field private inXopInclude:Z

.field private final next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

.field private parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;)V
    .locals 1
    .param p1, "parent"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .param p2, "next"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;
    .param p3, "au"    # Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->base64data:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .line 83
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    .line 84
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .line 85
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->au:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    .line 86
    return-void
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
    .line 93
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endDocument()V

    .line 94
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
    .line 115
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->inXopInclude:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->inXopInclude:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->followXop:Z

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    goto :goto_0
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
    .line 129
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endPrefixMapping(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    return-object v0
.end method

.method public getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    move-result-object v0

    return-object v0
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .param p1, "loc"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    .param p2, "nsContext"    # Ljavax/xml/namespace/NamespaceContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V

    .line 90
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 5
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    const-string v3, "Include"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    const-string v3, "http://www.w3.org/2004/08/xop/include"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    const-string v3, "href"

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "href":Ljava/lang/String;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->au:Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;

    invoke-virtual {v2, v1}, Lae/javax/xml/bind/attachment/AttachmentUnmarshaller;->getAttachmentAsDataHandler(Ljava/lang/String;)Ljavax/activation/DataHandler;

    move-result-object v0

    .line 101
    .local v0, "attachment":Ljavax/activation/DataHandler;
    if-nez v0, :cond_0

    .line 103
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lae/javax/xml/bind/ValidationEventHandler;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    .line 106
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->base64data:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-virtual {v2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set(Ljavax/activation/DataHandler;)V

    .line 107
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->base64data:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 108
    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->inXopInclude:Z

    .line 109
    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->followXop:Z

    .line 112
    .end local v0    # "attachment":Ljavax/activation/DataHandler;
    .end local v1    # "href":Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "nsUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
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
    .line 133
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->followXop:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/MTOMDecorator;->followXop:Z

    goto :goto_0
.end method
