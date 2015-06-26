.class public abstract Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ProxyLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ProxyLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public final leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected abstract selectLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public final startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ProxyLoader;->selectLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    .line 59
    .local v0, "loader":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 60
    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 61
    return-void
.end method
