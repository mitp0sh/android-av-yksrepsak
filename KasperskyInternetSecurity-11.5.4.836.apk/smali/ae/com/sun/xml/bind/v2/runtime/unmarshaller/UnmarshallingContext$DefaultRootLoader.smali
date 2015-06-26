.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$DefaultRootLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "UnmarshallingContext.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultRootLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;

    .prologue
    .line 1045
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$DefaultRootLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 7
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1052
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->selectRootLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v1

    .line 1053
    .local v1, "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    if-eqz v1, :cond_0

    .line 1054
    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 1055
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 1071
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-static {p1, p2, v6}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiTypeLoader;->parseXsiType(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 1062
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-nez v0, :cond_1

    .line 1064
    invoke-virtual {p0, p2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$DefaultRootLoader;->reportUnexpectedChildElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;Z)V

    goto :goto_0

    .line 1068
    :cond_1
    invoke-virtual {v0, v6, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v2

    iput-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 1069
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    new-instance v3, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->createQName()Ljavax/xml/namespace/QName;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6}, Lae/javax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    .line 1070
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    goto :goto_0
.end method

.method public getExpectedChildElements()Ljava/util/Collection;
    .locals 1
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
    .line 1075
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getJAXBContext()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getValidRootNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1079
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {v0, p2}, Lae/javax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 1081
    iget-object p2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    .line 1083
    :cond_0
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 1084
    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lae/javax/xml/bind/JAXBElement;->setNil(Z)V

    .line 1086
    :cond_1
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    # setter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->result:Ljava/lang/Object;
    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$1002(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    return-void
.end method
