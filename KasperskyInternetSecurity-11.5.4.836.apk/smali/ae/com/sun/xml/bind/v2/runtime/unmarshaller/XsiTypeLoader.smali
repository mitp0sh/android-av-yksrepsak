.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "XsiTypeLoader.java"


# static fields
.field static final XsiTypeQNAME:Ljavax/xml/namespace/QName;


# instance fields
.field private final defaultBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "type"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->XsiTypeQNAME:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V
    .locals 1
    .param p1, "defaultBeanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 71
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->defaultBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 72
    return-void
.end method

.method static parseXsiType(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 11
    .param p0, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p1, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .param p2, "defaultBeanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 85
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v2

    .line 86
    .local v2, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    const/4 v1, 0x0

    .line 89
    .local v1, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    .line 90
    .local v0, "atts":Lorg/xml/sax/Attributes;
    const-string v7, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v8, "type"

    invoke-interface {v0, v7, v8}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 92
    .local v3, "idx":I
    if-ltz v3, :cond_0

    .line 95
    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6, v2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 98
    .local v5, "type":Ljavax/xml/namespace/QName;
    if-nez v5, :cond_2

    .line 99
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->NOT_A_QNAME:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->reportError(Ljava/lang/String;Z)V

    .end local v5    # "type":Ljavax/xml/namespace/QName;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object p2, v1

    .line 128
    .end local p2    # "defaultBeanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_1
    return-object p2

    .line 101
    .restart local v5    # "type":Ljavax/xml/namespace/QName;
    .restart local v6    # "value":Ljava/lang/String;
    .restart local p2    # "defaultBeanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeNames()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 110
    :cond_3
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v7

    invoke-virtual {v7, v5}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getGlobalType(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v7

    invoke-virtual {v7, v5}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getNearestTypeName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "nearest":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 114
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNRECOGNIZED_TYPE_NAME_MAYBE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v10

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->reportError(Ljava/lang/String;Z)V

    goto :goto_0

    .line 116
    :cond_4
    sget-object v7, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNRECOGNIZED_TYPE_NAME:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->reportError(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getExpectedAttributes()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v0, "expAttrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/xml/namespace/QName;>;"
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedAttributes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 137
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->XsiTypeQNAME:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->defaultBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-static {p1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->parseXsiType(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 76
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->defaultBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 79
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v1

    .line 80
    .local v1, "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 81
    invoke-virtual {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 82
    return-void
.end method
