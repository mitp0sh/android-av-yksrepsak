.class public final Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;
.source "DOMOutput.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "assoc"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .prologue
    .line 61
    new-instance v0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;-><init>(Lorg/w3c/dom/Node;)V

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 62
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    .line 63
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method private getBuilder()Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->out:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    return-object v0
.end method


# virtual methods
.method public endStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/output/SAXOutput;->endStartTag()V

    .line 74
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getOuterPeer()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "op":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 76
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->getBuilder()Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    move-result-object v3

    invoke-virtual {v3}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->getCurrentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->addOuter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->getInnerPeer()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "ip":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 80
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->assoc:Lae/com/sun/xml/bind/v2/runtime/AssociationMap;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/DOMOutput;->getBuilder()Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;

    move-result-object v3

    invoke-virtual {v3}, Lae/com/sun/xml/bind/marshaller/SAX2DOMEx;->getCurrentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lae/com/sun/xml/bind/v2/runtime/AssociationMap;->addInner(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-void
.end method
