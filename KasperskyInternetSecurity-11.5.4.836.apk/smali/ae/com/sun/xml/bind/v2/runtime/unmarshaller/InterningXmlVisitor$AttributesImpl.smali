.class Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;
.super Ljava/lang/Object;
.source "InterningXmlVisitor.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributesImpl"
.end annotation


# instance fields
.field private core:Lorg/xml/sax/Attributes;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$1;

    .prologue
    .line 104
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->intern(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "qName"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "att"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 108
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/InterningXmlVisitor$AttributesImpl;->core:Lorg/xml/sax/Attributes;

    .line 109
    return-void
.end method
