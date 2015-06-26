.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ValuePropertyLoader.java"


# instance fields
.field private final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V
    .locals 1
    .param p1, "xacc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 62
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 63
    return-void
.end method


# virtual methods
.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 70
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    instance-of v1, v1, Lae/javax/xml/bind/JAXBElement;

    if-nez v1, :cond_0

    .line 77
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;->handleParseConversionException(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Exception;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ValuePropertyLoader;->handleParseConversionException(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Exception;)V

    goto :goto_0
.end method
