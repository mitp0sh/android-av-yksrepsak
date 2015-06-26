.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;
.super Ljava/lang/Object;
.source "DomLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "State"
.end annotation


# instance fields
.field depth:I

.field private final handler:Ljavax/xml/transform/sax/TransformerHandler;

.field private final result:Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    .locals 3
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    .line 73
    const/4 v1, 0x1

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->depth:I

    .line 76
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;->dom:Lae/javax/xml/bind/annotation/DomHandler;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;)Lae/javax/xml/bind/annotation/DomHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lae/javax/xml/bind/annotation/DomHandler;->createUnmarshaller(Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Result;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->result:Ljavax/xml/transform/Result;

    .line 78
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->result:Ljavax/xml/transform/Result;

    invoke-interface {v1, v2}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 82
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/transform/sax/TransformerHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 83
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    invoke-interface {v1}, Ljavax/xml/transform/sax/TransformerHandler;->startDocument()V

    .line 84
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getAllDeclaredPrefixes()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->declarePrefixes(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 87
    throw v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .param p2, "x2"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->declarePrefixes(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;

    .prologue
    .line 65
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->undeclarePrefixes([Ljava/lang/String;)V

    return-void
.end method

.method private declarePrefixes(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;[Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .param p2, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    array-length v2, p2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 97
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "nsUri":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefix \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' isn\'t bound"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    aget-object v3, p2, v0

    invoke-interface {v2, v3, v1}, Ljavax/xml/transform/sax/TransformerHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 101
    .end local v1    # "nsUri":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private undeclarePrefixes([Ljava/lang/String;)V
    .locals 3
    .param p1, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 105
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljavax/xml/transform/sax/TransformerHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public getElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;->dom:Lae/javax/xml/bind/annotation/DomHandler;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;->access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;)Lae/javax/xml/bind/annotation/DomHandler;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->result:Ljavax/xml/transform/Result;

    invoke-interface {v0, v1}, Lae/javax/xml/bind/annotation/DomHandler;->getElement(Ljavax/xml/transform/Result;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
