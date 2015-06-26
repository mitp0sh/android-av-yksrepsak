.class Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;
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
.field private map:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<TValueT;>;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;Z)V
    .locals 1
    .param p2, "x0"    # Z

    .prologue
    .line 156
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 158
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->target:Ljava/lang/ThreadLocal;

    .line 159
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

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
    .line 192
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryTag:Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$200(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->matches(Lae/com/sun/xml/bind/v2/runtime/Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$300(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

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
    .line 201
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->entryTag:Lae/com/sun/xml/bind/v2/runtime/Name;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$200(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v0

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/Name;->toQName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.1;"
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 183
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$000(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_0
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
    .line 165
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;, "Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty.1;"
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->target:Ljava/lang/ThreadLocal;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$000(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v2

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;

    # getter for: Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->mapImplClass:Ljava/lang/Class;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;->access$100(Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->map:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/property/SingleMapNodeProperty$1;->handleGenericException(Ljava/lang/Exception;Z)V

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    goto :goto_0
.end method
