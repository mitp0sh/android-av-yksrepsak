.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ProxyLoader;
.source "WildcardLoader.java"


# instance fields
.field private final dom:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

.field private final mode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;


# direct methods
.method public constructor <init>(Lae/javax/xml/bind/annotation/DomHandler;Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)V
    .locals 1
    .param p1, "dom"    # Lae/javax/xml/bind/annotation/DomHandler;
    .param p2, "mode"    # Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .prologue
    .line 66
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ProxyLoader;-><init>()V

    .line 67
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;-><init>(Lae/javax/xml/bind/annotation/DomHandler;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;->dom:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    .line 68
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;->mode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .line 69
    return-void
.end method


# virtual methods
.method protected selectLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 3
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "tag"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 74
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;->mode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    iget-boolean v2, v2, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->allowTypedObject:Z

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->selectRootLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v1

    .line 76
    .local v1, "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    if-eqz v1, :cond_0

    .line 83
    .end local v1    # "l":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    :goto_0
    return-object v1

    .line 79
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;->mode:Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    iget-boolean v2, v2, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->allowDom:Z

    if-eqz v2, :cond_1

    .line 80
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/WildcardLoader;->dom:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    goto :goto_0

    .line 83
    :cond_1
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;->INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_0
.end method
