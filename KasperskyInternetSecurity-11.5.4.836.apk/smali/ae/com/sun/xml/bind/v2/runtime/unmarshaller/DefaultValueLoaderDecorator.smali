.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "DefaultValueLoaderDecorator.java"


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final l:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>()V

    .line 55
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;->l:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 56
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;->defaultValue:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->elementDefaultValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;->defaultValue:Ljava/lang/String;

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->elementDefaultValue:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;->l:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 66
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DefaultValueLoaderDecorator;->l:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 67
    return-void
.end method
