.class public abstract Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field protected expectText:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "expectText"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->expectText:Z

    .line 65
    return-void
.end method

.method private computeExpectedElements()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v2, "r":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedChildElements()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/namespace/QName;

    .line 188
    .local v1, "n":Ljavax/xml/namespace/QName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    const-string v3, "<{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    .end local v1    # "n":Ljavax/xml/namespace/QName;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 192
    const-string v3, "(none)"

    .line 195
    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static handleGenericError(Ljava/lang/Error;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Error;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Z)V

    .line 250
    return-void
.end method

.method protected static handleGenericException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->handleGenericException(Ljava/lang/Exception;Z)V

    .line 242
    return-void
.end method

.method public static handleGenericException(Ljava/lang/Exception;Z)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "canRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 246
    return-void
.end method

.method protected static handleParseConversionException(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 272
    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "nested"    # Ljava/lang/Exception;
    .param p2, "canRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 258
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    new-instance v2, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v3

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;->getLocation()Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v3

    invoke-direct {v2, v1, p0, v3, p1}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleEvent(Lae/javax/xml/bind/ValidationEvent;Z)V

    .line 263
    return-void

    .line 258
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected static reportError(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "canRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 254
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
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportUnexpectedChildElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;Z)V

    .line 106
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;->INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    .line 108
    return-void
.end method

.method public final expectText()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->expectText:Z

    return v0
.end method

.method protected final fireAfterUnmarshal(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 4
    .param p1, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 227
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getListener()Lae/javax/xml/bind/Unmarshaller$Listener;

    move-result-object v1

    .line 228
    .local v1, "listener":Lae/javax/xml/bind/Unmarshaller$Listener;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->hasAfterUnmarshalMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    iget-object v3, p3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {p1, v2, p2, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->invokeAfterUnmarshalMethod(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    :cond_0
    if-eqz v1, :cond_1

    .line 232
    iget-object v2, p3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Lae/javax/xml/bind/Unmarshaller$Listener;->afterUnmarshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .end local v0    # "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .end local v1    # "listener":Lae/javax/xml/bind/Unmarshaller$Listener;
    :cond_1
    return-void
.end method

.method protected final fireBeforeUnmarshal(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 4
    .param p1, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p2, "child"    # Ljava/lang/Object;
    .param p3, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 207
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->getListener()Lae/javax/xml/bind/Unmarshaller$Listener;

    move-result-object v1

    .line 208
    .local v1, "listener":Lae/javax/xml/bind/Unmarshaller$Listener;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->hasBeforeUnmarshalMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    iget-object v3, p3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {p1, v2, p2, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->invokeBeforeUnmarshalMethod(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    :cond_0
    if-eqz v1, :cond_1

    .line 212
    iget-object v2, p3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Lae/javax/xml/bind/Unmarshaller$Listener;->beforeUnmarshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .end local v0    # "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .end local v1    # "listener":Lae/javax/xml/bind/Unmarshaller$Listener;
    :cond_1
    return-void
.end method

.method public getExpectedAttributes()Ljava/util/Collection;
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
    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 0
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method protected final reportUnexpectedChildElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;Z)V
    .locals 4
    .param p1, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .param p2, "canRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    if-eqz p2, :cond_0

    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->parent:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;->hasEventHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 118
    :cond_1
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNINTERNED_STRINGS:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Z)V

    goto :goto_0

    .line 120
    :cond_2
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNEXPECTED_ELEMENT:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->computeExpectedElements()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 0
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x20

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 147
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNEXPECTED_TEXT:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->reportError(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method
