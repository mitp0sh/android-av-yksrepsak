.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$13;
.super Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;
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
        "Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl",
        "<[B>;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 688
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$PcdataImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
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
    .line 688
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$13;->parse(Ljava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)[B
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 690
    # invokes: Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->decodeBase64(Ljava/lang/CharSequence;)[B
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->access$100(Ljava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 688
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$13;->print([B)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    move-result-object v0

    return-object v0
.end method

.method public print([B)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .locals 3
    .param p1, "v"    # [B

    .prologue
    .line 694
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v2

    .line 695
    .local v2, "w":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;-><init>()V

    .line 696
    .local v0, "bd":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getXMIMEContentType()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set([BLjava/lang/String;)V

    .line 698
    return-object v0
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
    .line 688
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$13;->print([B)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    move-result-object v0

    return-object v0
.end method
