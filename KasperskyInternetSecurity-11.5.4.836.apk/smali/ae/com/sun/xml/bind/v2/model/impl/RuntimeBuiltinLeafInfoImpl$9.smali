.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$9;
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
        "<",
        "Ljavax/activation/DataHandler;",
        ">;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 463
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
    .line 463
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$9;->parse(Ljava/lang/CharSequence;)Ljavax/activation/DataHandler;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljavax/activation/DataHandler;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 465
    instance-of v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    if-eqz v0, :cond_0

    .line 466
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lcom/sun/istack/ByteArrayDataSource;

    # invokes: Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->decodeBase64(Ljava/lang/CharSequence;)[B
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->access$100(Ljava/lang/CharSequence;)[B

    move-result-object v2

    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v3

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getXMIMEContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/istack/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    goto :goto_0
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
    .line 463
    check-cast p1, Ljavax/activation/DataHandler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$9;->print(Ljavax/activation/DataHandler;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljavax/activation/DataHandler;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .locals 1
    .param p1, "v"    # Ljavax/activation/DataHandler;

    .prologue
    .line 473
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;-><init>()V

    .line 474
    .local v0, "bd":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set(Ljavax/activation/DataHandler;)V

    .line 475
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
    .line 463
    check-cast p1, Ljavax/activation/DataHandler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$9;->print(Ljavax/activation/DataHandler;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    move-result-object v0

    return-object v0
.end method
