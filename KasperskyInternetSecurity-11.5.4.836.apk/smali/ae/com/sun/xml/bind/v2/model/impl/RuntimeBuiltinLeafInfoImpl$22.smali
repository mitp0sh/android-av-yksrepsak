.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;
.super Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;
.source "RuntimeBuiltinLeafInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl",
        "<",
        "Ljavax/xml/namespace/QName;",
        ">;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 805
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 805
    check-cast p1, Ljavax/xml/namespace/QName;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;->declareNamespace(Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-void
.end method

.method public declareNamespace(Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 4
    .param p1, "v"    # Ljavax/xml/namespace/QName;
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 826
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 827
    return-void
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;->parse(Ljava/lang/CharSequence;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljavax/xml/namespace/QName;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 808
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v2

    invoke-static {v1, v2}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    :goto_0
    return-object v1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 811
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 805
    check-cast p1, Ljavax/xml/namespace/QName;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;->print(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 805
    check-cast p1, Ljavax/xml/namespace/QName;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$22;->print(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 816
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v0

    invoke-static {p1, v0}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x1

    return v0
.end method
