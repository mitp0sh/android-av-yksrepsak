.class Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;
.super Ljava/lang/Object;
.source "ElementBeanInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/property/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/property/Property",
        "<",
        "Lae/javax/xml/bind/JAXBElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

.field final synthetic val$grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->val$grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 0
    .param p1, "chain"    # Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "handlers":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    return-void
.end method

.method public getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdValue(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Lae/javax/xml/bind/JAXBElement;

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIdValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->getIdValue(Lae/javax/xml/bind/JAXBElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-result-object v0

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->getInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ELEMENT:Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    return-object v0
.end method

.method public hasSerializeURIAction()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isHiddenByOverride()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public reset(Lae/javax/xml/bind/JAXBElement;)V
    .locals 1
    .param p1, "o"    # Lae/javax/xml/bind/JAXBElement;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 131
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->reset(Lae/javax/xml/bind/JAXBElement;)V

    return-void
.end method

.method public serializeBody(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 10
    .param p1, "e"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "outerPeer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 137
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getScope()Ljava/lang/Class;

    move-result-object v2

    .line 138
    .local v2, "scope":Ljava/lang/Class;
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->isGlobalScope()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 140
    .local v1, "n":Ljavax/xml/namespace/QName;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->val$grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v6, v2, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getElement(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    move-result-object v0

    .line 141
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    if-nez v0, :cond_2

    .line 145
    :try_start_0
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->val$grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getDeclaredType()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 151
    .local v3, "tbi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-virtual {p1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v6, v7, v8, v9}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    if-nez v4, :cond_1

    .line 154
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->writeXsiNilTrue()V

    .line 158
    :goto_0
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 166
    .end local v3    # "tbi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v5

    .line 148
    .local v5, "x":Lae/javax/xml/bind/JAXBException;
    invoke-virtual {p2, v9, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 156
    .end local v5    # "x":Lae/javax/xml/bind/JAXBException;
    .restart local v3    # "tbi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    const-string v6, "value"

    const/4 v7, 0x0

    invoke-virtual {p2, v4, v6, v3, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V

    goto :goto_0

    .line 161
    .end local v3    # "tbi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    # getter for: Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->property:Lae/com/sun/xml/bind/v2/runtime/property/Property;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->access$000(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;)Lae/com/sun/xml/bind/v2/runtime/property/Property;

    move-result-object v6

    invoke-interface {v6, p1, p2, p1}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    :try_end_1
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v5

    .line 163
    .local v5, "x":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p2, v9, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 131
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->serializeBody(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public serializeURIs(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "o"    # Lae/javax/xml/bind/JAXBElement;
    .param p2, "target"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 169
    return-void
.end method

.method public bridge synthetic serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 131
    check-cast p1, Lae/javax/xml/bind/JAXBElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$1;->serializeURIs(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public setHiddenByOverride(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported on jaxbelements."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrapUp()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
