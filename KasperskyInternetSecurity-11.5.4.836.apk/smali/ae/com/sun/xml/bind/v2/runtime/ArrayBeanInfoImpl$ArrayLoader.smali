.class final Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ArrayBeanInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ArrayLoader"
.end annotation


# instance fields
.field private final itemLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 2
    .param p2, "owner"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 88
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 90
    # getter for: Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->itemBeanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;->itemLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 91
    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, ""

    const-string v1, "item"

    invoke-virtual {p2, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;->itemLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 109
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    goto :goto_0
.end method

.method public getExpectedChildElements()Ljava/util/Collection;
    .locals 3
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
    .line 117
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, ""

    const-string v2, "item"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 102
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl$ArrayLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;

    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;->toArray(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public receive(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 98
    return-void
.end method
