.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "StructureLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private final beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

.field private catchAll:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

.field private final childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;",
            ">;"
        }
    .end annotation
.end field

.field private frameSize:I

.field private textHandler:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->$assertionsDisabled:Z

    .line 294
    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->EMPTY:Lae/com/sun/xml/bind/v2/util/QNameMap;

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;)V
    .locals 1
    .param p1, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 82
    new-instance v0, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 119
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 120
    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 7
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "arg"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v5, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v6, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 249
    .local v0, "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
    if-nez v0, :cond_1

    .line 250
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeNames()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 251
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeNames()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 252
    .local v3, "typeNamesIt":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 253
    .local v1, "parentQName":Ljavax/xml/namespace/QName;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->catchAll:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    if-nez v4, :cond_0

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "parentQName":Ljavax/xml/namespace/QName;
    check-cast v1, Ljavax/xml/namespace/QName;

    .line 255
    .restart local v1    # "parentQName":Ljavax/xml/namespace/QName;
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "parentUri":Ljava/lang/String;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v5, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 259
    .end local v1    # "parentQName":Ljavax/xml/namespace/QName;
    .end local v2    # "parentUri":Ljava/lang/String;
    .end local v3    # "typeNamesIt":Ljava/util/Iterator;
    .restart local v0    # "child":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;
    :cond_0
    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->catchAll:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 261
    if-nez v0, :cond_1

    .line 262
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v4, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    iput-object v4, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 269
    iget-object v4, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    iput-object v4, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->receiver:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Receiver;

    goto :goto_0
.end method

.method public getBeanInfo()Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    return-object v0
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
    .line 279
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->keySet()Ljava/util/Collection;

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
    .line 274
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap;->keySet()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public init(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 8
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<*",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p3, "attWildcard":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<*Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;>;"
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;

    invoke-direct {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 131
    .local v2, "chain":Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;
    move-object v1, p2

    .local v1, "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :goto_0
    if-eqz v1, :cond_2

    .line 132
    iget-object v5, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    array-length v5, v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 133
    iget-object v5, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    aget-object v4, v5, v3

    .line 135
    .local v4, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader$1;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->getKind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v6

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 132
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 137
    :pswitch_0
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    if-nez v5, :cond_0

    .line 138
    new-instance v5, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct {v5}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    :cond_0
    move-object v0, v4

    .line 139
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .line 140
    .local v0, "ap":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v6, v0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/Name;->toQName()Ljavax/xml/namespace/QName;

    move-result-object v6

    iget-object v7, v0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v5, v6, v7}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    goto :goto_2

    .line 146
    .end local v0    # "ap":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
    :pswitch_1
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-interface {v4, v2, v5}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->buildChildElementUnmarshallers(Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;Lae/com/sun/xml/bind/v2/util/QNameMap;)V

    goto :goto_2

    .line 131
    .end local v4    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_1
    iget-object v1, v1, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    goto :goto_0

    .line 152
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/property/UnmarshallerChain;->getScopeSize()I

    move-result v5

    iput v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->frameSize:I

    .line 154
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;->TEXT_HANDLER:Ljavax/xml/namespace/QName;

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->textHandler:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 155
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->childUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    sget-object v6, Lae/com/sun/xml/bind/v2/runtime/property/StructureLoaderBuilder;->CATCH_ALL:Ljavax/xml/namespace/QName;

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->catchAll:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    .line 157
    if-eqz p3, :cond_4

    .line 158
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 161
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    if-nez v5, :cond_3

    .line 162
    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->EMPTY:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 166
    :cond_3
    :goto_3
    return-void

    .line 164
    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    goto :goto_3

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 3
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->frameSize:I

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->endScope(I)V

    .line 291
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    invoke-virtual {p0, v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->fireAfterUnmarshal(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 292
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 21
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v8

    .line 174
    .local v8, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    sget-boolean v17, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isImmutable()Z

    move-result v17

    if-eqz v17, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 177
    :cond_0
    invoke-virtual {v8}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInnerPeer()Ljava/lang/Object;

    move-result-object v7

    .line 179
    .local v7, "child":Ljava/lang/Object;
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 180
    const/4 v7, 0x0

    .line 182
    .end local v7    # "child":Ljava/lang/Object;
    :cond_1
    if-eqz v7, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)Z

    .line 185
    :cond_2
    if-nez v7, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->createInstance(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)Ljava/lang/Object;

    move-result-object v7

    .line 188
    :cond_3
    invoke-virtual {v8, v7}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->recordInnerPeer(Ljava/lang/Object;)V

    .line 190
    move-object/from16 v0, p1

    iput-object v7, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->fireBeforeUnmarshal(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->frameSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->startScope(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 198
    move-object/from16 v0, p2

    iget-object v4, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    .line 199
    .local v4, "atts":Lorg/xml/sax/Attributes;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 200
    invoke-interface {v4, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "auri":Ljava/lang/String;
    invoke-interface {v4, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "alocal":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 204
    invoke-interface {v4, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    :cond_4
    invoke-interface {v4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "avalue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attUnmarshallers:Lae/com/sun/xml/bind/v2/util/QNameMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 209
    .local v16, "xacc":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    if-eqz v16, :cond_6

    .line 210
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 199
    :cond_5
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 211
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 212
    invoke-interface {v4, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v15

    .line 213
    .local v15, "qname":Ljava/lang/String;
    invoke-interface {v4, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 215
    move-object/from16 v0, p1

    iget-object v13, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 216
    .local v13, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 217
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    if-nez v12, :cond_7

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->valueType:Ljava/lang/Class;

    move-object/from16 v17, v0

    const-class v18, Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 222
    new-instance v12, Ljava/util/HashMap;

    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 229
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v12}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    :cond_7
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 234
    .local v11, "idx":I
    if-gez v11, :cond_a

    const-string v14, ""

    .line 237
    .local v14, "prefix":Ljava/lang/String;
    :goto_2
    new-instance v17, Ljavax/xml/namespace/QName;

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v3, v14}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    .end local v11    # "idx":I
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    .end local v13    # "o":Ljava/lang/Object;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v15    # "qname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 240
    .local v9, "e":Lae/com/sun/xml/bind/api/AccessorException;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v9, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->handleGenericException(Ljava/lang/Exception;Z)V

    goto :goto_1

    .line 226
    .end local v9    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    .restart local v13    # "o":Ljava/lang/Object;
    .restart local v15    # "qname":Ljava/lang/String;
    :cond_8
    :try_start_1
    sget-object v17, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->UNABLE_TO_CREATE_MAP:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->attCatchAll:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->valueType:Ljava/lang/Class;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/String;)V

    .line 244
    .end local v3    # "alocal":Ljava/lang/String;
    .end local v4    # "atts":Lorg/xml/sax/Attributes;
    .end local v5    # "auri":Ljava/lang/String;
    .end local v6    # "avalue":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    .end local v13    # "o":Ljava/lang/Object;
    .end local v15    # "qname":Ljava/lang/String;
    .end local v16    # "xacc":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    :cond_9
    return-void

    .line 235
    .restart local v3    # "alocal":Ljava/lang/String;
    .restart local v4    # "atts":Lorg/xml/sax/Attributes;
    .restart local v5    # "auri":Ljava/lang/String;
    .restart local v6    # "avalue":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v11    # "idx":I
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    .restart local v13    # "o":Ljava/lang/Object;
    .restart local v15    # "qname":Ljava/lang/String;
    .restart local v16    # "xacc":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    :cond_a
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .restart local v14    # "prefix":Ljava/lang/String;
    goto :goto_2
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->textHandler:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StructureLoader;->textHandler:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ChildLoader;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-void
.end method
