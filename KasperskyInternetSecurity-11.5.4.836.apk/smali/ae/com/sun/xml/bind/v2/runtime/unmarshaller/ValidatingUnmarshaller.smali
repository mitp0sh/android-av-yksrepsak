.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;
.super Ljava/lang/Object;
.source "ValidatingUnmarshaller.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;


# instance fields
.field private buf:[C

.field private final next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

.field private nsContext:Ljavax/xml/namespace/NamespaceContext;

.field private final predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

.field private final validator:Ljavax/xml/validation/ValidatorHandler;


# direct methods
.method public constructor <init>(Ljavax/xml/validation/Schema;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;)V
    .locals 3
    .param p1, "schema"    # Ljavax/xml/validation/Schema;
    .param p2, "next"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->nsContext:Ljavax/xml/namespace/NamespaceContext;

    .line 67
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->buf:[C

    .line 73
    invoke-virtual {p1}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    .line 74
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    .line 75
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    .line 78
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    new-instance v1, Lae/com/sun/xml/bind/v2/util/FatalAdapter;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/v2/util/FatalAdapter;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v0, v1}, Ljavax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 79
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
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->nsContext:Ljavax/xml/namespace/NamespaceContext;

    .line 90
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {v0}, Ljavax/xml/validation/ValidatorHandler;->endDocument()V

    .line 91
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endDocument()V

    .line 92
    return-void
.end method

.method public endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 4
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getQname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/xml/validation/ValidatorHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 108
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
    .line 116
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {v0, p1}, Ljavax/xml/validation/ValidatorHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->endPrefixMapping(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public expectText()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    return-object v0
.end method

.method public getPredictor()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;
    .locals 0

    .prologue
    .line 138
    return-object p0
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
    .line 82
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->nsContext:Ljavax/xml/namespace/NamespaceContext;

    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {v0, p1}, Ljavax/xml/validation/ValidatorHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 84
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {v0}, Ljavax/xml/validation/ValidatorHandler;->startDocument()V

    .line 85
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startDocument(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;Ljavax/xml/namespace/NamespaceContext;)V

    .line 86
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 6
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->nsContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "tagNamePrefix":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->nsContext:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {v2, v0}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/xml/validation/ValidatorHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "tagNamePrefix":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getQname()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/xml/validation/ValidatorHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 102
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 103
    return-void
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
    .line 111
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {v0, p1, p2}, Ljavax/xml/validation/ValidatorHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public text(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "pcdata"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 122
    .local v1, "len":I
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->buf:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 123
    new-array v2, v1, [C

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->buf:[C

    .line 125
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 126
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->buf:[C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->validator:Ljavax/xml/validation/ValidatorHandler;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->buf:[C

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljavax/xml/validation/ValidatorHandler;->characters([CII)V

    .line 129
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->predictor:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor$TextPredictor;->expectText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValidatingUnmarshaller;->next:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;

    invoke-interface {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XmlVisitor;->text(Ljava/lang/CharSequence;)V

    .line 131
    :cond_2
    return-void
.end method
