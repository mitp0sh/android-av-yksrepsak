.class Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "SingleMapNodeProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 210
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.2;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.2;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyTag:Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$400(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->matches(Lae/com/sun/xml/bind/v2/runtime/Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$500(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 227
    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$600()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueTag:Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$700(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->matches(Lae/com/sun/xml/bind/v2/runtime/Name;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$800(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 232
    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueReceiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$900()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    goto :goto_0

    .line 235
    :cond_1
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    goto :goto_0
.end method

.method public getExpectedChildElements()Ljava/util/Collection;
    .locals 3
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
    .line 240
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.2;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->keyTag:Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$400(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/Name;->toQName()Ljavax/xml/namespace/QName;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->valueTag:Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$700(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/Name;->toQName()Ljavax/xml/namespace/QName;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 218
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.2;"
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 219
    .local v0, "keyValue":[Ljava/lang/Object;
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v1, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 220
    .local v1, "map":Ljava/util/Map;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 213
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$2;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.2;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 214
    return-void
.end method
