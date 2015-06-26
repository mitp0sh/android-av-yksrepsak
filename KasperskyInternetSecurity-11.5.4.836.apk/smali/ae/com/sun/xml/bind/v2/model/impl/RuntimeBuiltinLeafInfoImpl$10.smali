.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$10;
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
        "Ljavax/xml/transform/Source;",
        ">;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 479
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
    .line 479
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$10;->parse(Ljava/lang/CharSequence;)Ljavax/xml/transform/Source;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljavax/xml/transform/Source;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 482
    :try_start_0
    instance-of v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    if-eqz v1, :cond_0

    .line 483
    new-instance v1, Lae/com/sun/xml/bind/v2/util/DataSourceSource;

    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/v2/util/DataSourceSource;-><init>(Ljavax/activation/DataHandler;)V

    .line 489
    :goto_0
    return-object v1

    .line 485
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    new-instance v1, Lae/com/sun/xml/bind/v2/util/DataSourceSource;

    new-instance v2, Lcom/sun/istack/ByteArrayDataSource;

    # invokes: Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->decodeBase64(Ljava/lang/CharSequence;)[B
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->access$100(Ljava/lang/CharSequence;)[B

    move-result-object v3

    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v4

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getXMIMEContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/istack/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/v2/util/DataSourceSource;-><init>(Ljavax/activation/DataSource;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    .end local p1    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljavax/activation/MimeTypeParseException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 489
    const/4 v1, 0x0

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
    .line 479
    check-cast p1, Ljavax/xml/transform/Source;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$10;->print(Ljavax/xml/transform/Source;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljavax/xml/transform/Source;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .locals 14
    .param p1, "v"    # Ljavax/xml/transform/Source;

    .prologue
    .line 494
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v11

    .line 495
    .local v11, "xs":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-direct {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;-><init>()V

    .line 497
    .local v1, "bd":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    invoke-virtual {v11}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getXMIMEContentType()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "contentType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 499
    .local v8, "mt":Ljavax/activation/MimeType;
    if-eqz v3, :cond_0

    .line 501
    :try_start_0
    new-instance v9, Ljavax/activation/MimeType;

    invoke-direct {v9, v3}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "mt":Ljavax/activation/MimeType;
    .local v9, "mt":Ljavax/activation/MimeType;
    move-object v8, v9

    .line 507
    .end local v9    # "mt":Ljavax/activation/MimeType;
    .restart local v8    # "mt":Ljavax/activation/MimeType;
    :cond_0
    :goto_0
    instance-of v12, p1, Lae/com/sun/xml/bind/v2/util/DataSourceSource;

    if-eqz v12, :cond_2

    move-object v12, p1

    .line 510
    check-cast v12, Lae/com/sun/xml/bind/v2/util/DataSourceSource;

    invoke-virtual {v12}, Lae/com/sun/xml/bind/v2/util/DataSourceSource;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v5

    .line 512
    .local v5, "ds":Ljavax/activation/DataSource;
    invoke-interface {v5}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "dsct":Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 514
    :cond_1
    new-instance v12, Ljavax/activation/DataHandler;

    invoke-direct {v12, v5}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v1, v12}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set(Ljavax/activation/DataHandler;)V

    .line 546
    .end local v5    # "ds":Ljavax/activation/DataSource;
    .end local v6    # "dsct":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 502
    :catch_0
    move-exception v7

    .line 503
    .local v7, "e":Ljavax/activation/MimeTypeParseException;
    invoke-virtual {v11, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleError(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 522
    .end local v7    # "e":Ljavax/activation/MimeTypeParseException;
    :cond_2
    const/4 v2, 0x0

    .line 523
    .local v2, "charset":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 524
    const-string v12, "charset"

    invoke-virtual {v8, v12}, Ljavax/activation/MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 525
    :cond_3
    if-nez v2, :cond_4

    .line 526
    const-string v2, "UTF-8"

    .line 529
    :cond_4
    :try_start_1
    new-instance v0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;-><init>()V

    .line 530
    .local v0, "baos":Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;
    invoke-virtual {v11}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getIdentityTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    .line 531
    .local v10, "tr":Ljavax/xml/transform/Transformer;
    const-string v12, "encoding"

    invoke-virtual {v10, v12}, Ljavax/xml/transform/Transformer;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "defaultEncoding":Ljava/lang/String;
    const-string v12, "encoding"

    invoke-virtual {v10, v12, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v12, Ljavax/xml/transform/stream/StreamResult;

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-direct {v13, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v10, p1, v12}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 534
    const-string v12, "encoding"

    invoke-virtual {v10, v12, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "application/xml; charset="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->set(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 537
    .end local v0    # "baos":Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;
    .end local v4    # "defaultEncoding":Ljava/lang/String;
    .end local v10    # "tr":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v7

    .line 539
    .local v7, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v11, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleError(Ljava/lang/Exception;)Z

    .line 545
    .end local v7    # "e":Ljavax/xml/transform/TransformerException;
    :goto_2
    const/4 v12, 0x0

    new-array v12, v12, [B

    const-string v13, "application/xml"

    invoke-virtual {v1, v12, v13}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set([BLjava/lang/String;)V

    goto :goto_1

    .line 540
    :catch_2
    move-exception v7

    .line 541
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleError(Ljava/lang/Exception;)Z

    goto :goto_2
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
    .line 479
    check-cast p1, Ljavax/xml/transform/Source;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$10;->print(Ljavax/xml/transform/Source;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    move-result-object v0

    return-object v0
.end method
