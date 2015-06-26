.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$ExpectedTypeRootLoader;
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
    name = "ExpectedTypeRootLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1094
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$1;

    .prologue
    .line 1094
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$ExpectedTypeRootLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 6
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    const/4 v5, 0x0

    .line 1101
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 1104
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    new-instance v1, Ljavax/xml/namespace/QName;

    iget-object v2, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    .local v1, "qn":Ljavax/xml/namespace/QName;
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    new-instance v3, Lae/javax/xml/bind/JAXBElement;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->expectedType:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$1100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v4

    iget-object v4, v4, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-direct {v3, v1, v4, v5, v5}, Lae/javax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 1106
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 1111
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->expectedType:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$1100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V

    iput-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 1112
    return-void
.end method

.method public receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1115
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    .line 1116
    .local v0, "e":Lae/javax/xml/bind/JAXBElement;
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 1117
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->recordOuterPeer(Ljava/lang/Object;)V

    .line 1118
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    # setter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->result:Ljava/lang/Object;
    invoke-static {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->access$1002(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    return-void
.end method
