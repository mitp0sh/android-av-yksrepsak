.class final Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "ElementBeanInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IntercepterLoader"
.end annotation


# instance fields
.field private final core:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V
    .locals 0
    .param p2, "core"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .prologue
    .line 221
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>()V

    .line 222
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->core:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 223
    return-void
.end method


# virtual methods
.method public intercept(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    .line 259
    .local v0, "e":Lae/javax/xml/bind/JAXBElement;
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 260
    const/4 v1, 0x0

    iput-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    .line 262
    iget-boolean v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lae/javax/xml/bind/JAXBElement;->setNil(Z)V

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->nil:Z

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    .line 270
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 272
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    invoke-virtual {p0, v1, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->fireAfterUnmarshal(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 274
    return-object v0
.end method

.method public final startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 5
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->core:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 228
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->intercepter:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Intercepter;

    .line 233
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v1

    .line 236
    .local v1, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getOuterPeer()Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "child":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    .end local v0    # "child":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 242
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    move-object v3, v0

    check-cast v3, Lae/javax/xml/bind/JAXBElement;

    invoke-virtual {v4, v3, v1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;->reset(Lae/javax/xml/bind/JAXBElement;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z

    .line 244
    :cond_1
    if-nez v0, :cond_2

    .line 245
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    invoke-virtual {v1, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->createInstance(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    :cond_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->this$0:Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    invoke-virtual {p0, v3, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->fireBeforeUnmarshal(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 249
    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->recordOuterPeer(Ljava/lang/Object;)V

    .line 250
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    .line 251
    .local v2, "p":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    iget-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    iput-object v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->backup:Ljava/lang/Object;

    .line 252
    iput-object v0, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 254
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl$IntercepterLoader;->core:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v3, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 255
    return-void
.end method
