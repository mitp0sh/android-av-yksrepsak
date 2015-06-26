.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$6;
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # [Ljavax/xml/namespace/QName;

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$StringImpl;-><init>(Ljava/lang/Class;[Ljavax/xml/namespace/QName;)V

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
    .line 314
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$6;->parse(Ljava/lang/CharSequence;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/net/URL;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v1, "JSR222 Issue #42"

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/TODO;->checkSpec(Ljava/lang/String;)V

    .line 318
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-object v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 321
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
    .line 314
    check-cast p1, Ljava/net/URL;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$6;->print(Ljava/net/URL;)Ljava/lang/String;

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
    .line 314
    check-cast p1, Ljava/net/URL;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl$6;->print(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Ljava/net/URL;

    .prologue
    .line 325
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
