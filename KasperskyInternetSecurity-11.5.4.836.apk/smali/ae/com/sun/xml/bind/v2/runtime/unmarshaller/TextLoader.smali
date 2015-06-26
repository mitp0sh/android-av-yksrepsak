.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "TextLoader.java"


# instance fields
.field private final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;)V
    .locals 1
    .param p1, "xducer"    # Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 64
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 65
    return-void
.end method


# virtual methods
.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TextLoader;->handleParseConversionException(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Exception;)V

    goto :goto_0
.end method
