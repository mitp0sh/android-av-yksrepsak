.class final Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ArrayERProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemsLoader"
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

.field private final children:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Lae/com/sun/xml/bind/v2/util/QNameMap;)V
    .locals 1
    .param p1, "acc"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .param p2, "lister"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;",
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "children":Lae/com/sun/xml/bind/v2/util/QNameMap;, "Lae/com/sun/xml/bind/v2/util/QNameMap<Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 106
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 107
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 108
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->children:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 109
    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->children:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v2, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 127
    .local v0, "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
    if-nez v0, :cond_0

    .line 128
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->children:Lae/com/sun/xml/bind/v2/util/QNameMap;

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;->CATCH_ALL:Ljavax/xml/namespace/QName;

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 130
    .restart local v0    # "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
    :cond_0
    if-nez v0, :cond_1

    .line 131
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 135
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    goto :goto_0
.end method

.method public getExpectedChildElements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->children:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->keySet()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->endScope(I)V

    .line 141
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 114
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->startScope(I)V

    .line 116
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getScope(I)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayERProperty$ItemsLoader;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Scope;->start(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V

    .line 120
    return-void
.end method
