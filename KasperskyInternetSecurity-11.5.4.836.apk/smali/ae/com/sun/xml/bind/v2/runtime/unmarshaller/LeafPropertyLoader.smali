.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "LeafPropertyLoader.java"


# instance fields
.field private final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V
    .locals 1
    .param p1, "xacc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 60
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 61
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
    .line 65
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 68
    .end local v0    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LeafPropertyLoader;->handleParseConversionException(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Exception;)V

    goto :goto_0
.end method
