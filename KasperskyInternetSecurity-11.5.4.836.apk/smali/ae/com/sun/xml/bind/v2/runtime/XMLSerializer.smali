.class public final Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
.super Lae/com/sun/xml/bind/v2/runtime/Coordinator;
.source "XMLSerializer.java"


# instance fields
.field public attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

.field private base64Data:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

.field private contentHandlerAdapter:Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;

.field currentProperty:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/property/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private expectedMimeType:Ljavax/activation/MimeType;

.field private fragment:Z

.field public final grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

.field private final idReferencedObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private identityTransformer:Ljavax/xml/transform/Transformer;

.field private inlineBinaryFlag:Z

.field private final intData:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;

.field public final knownUri2prefixIndexMap:[I

.field private final marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

.field public final nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

.field private noNsSchemaLocation:Ljava/lang/String;

.field private final nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

.field private nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

.field private final objectsWithId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

.field private schemaLocation:Ljava/lang/String;

.field private schemaType:Ljavax/xml/namespace/QName;

.field private seenRoot:Z

.field private textHasAlreadyPrinted:Z


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;)V
    .locals 2
    .param p1, "_owner"    # Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    .line 156
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    .line 161
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->idReferencedObjects:Ljava/util/Set;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->objectsWithId:Ljava/util/Set;

    .line 176
    new-instance v0, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    .line 198
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->intData:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;

    .line 203
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    .line 204
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .line 205
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    .line 206
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->context:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    .line 207
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/NameList;->namespaceURIs:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->knownUri2prefixIndexMap:[I

    .line 208
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 135
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    return-object v0
.end method

.method private fireAfterMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p2, "currentTarget"    # Ljava/lang/Object;

    .prologue
    .line 718
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->hasAfterMarshalMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLifecycleMethods()Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    move-result-object v2

    iget-object v1, v2, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->afterMarshal:Ljava/lang/reflect/Method;

    .line 720
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireMarshalEvent(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 724
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getListener()Lae/javax/xml/bind/Marshaller$Listener;

    move-result-object v0

    .line 725
    .local v0, "externalListener":Lae/javax/xml/bind/Marshaller$Listener;
    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/Marshaller$Listener;->afterMarshal(Ljava/lang/Object;)V

    .line 729
    :cond_1
    return-void
.end method

.method private fireBeforeMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p2, "currentTarget"    # Ljava/lang/Object;

    .prologue
    .line 742
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->hasBeforeMarshalMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLifecycleMethods()Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;

    move-result-object v2

    iget-object v1, v2, Lae/com/sun/xml/bind/v2/runtime/LifecycleMethods;->beforeMarshal:Ljava/lang/reflect/Method;

    .line 744
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireMarshalEvent(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 748
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getListener()Lae/javax/xml/bind/Marshaller$Listener;

    move-result-object v0

    .line 749
    .local v0, "externalListener":Lae/javax/xml/bind/Marshaller$Listener;
    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/Marshaller$Listener;->beforeMarshal(Ljava/lang/Object;)V

    .line 752
    :cond_1
    return-void
.end method

.method private fireMarshalEvent(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 756
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    aput-object v3, v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getIdFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "identifiableObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .locals 1

    .prologue
    .line 1093
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->_getInstance()Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    return-object v0
.end method

.method private handleMissingObjectError(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportMissingObjectError(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 234
    return-void
.end method

.method private pushObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->push(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    .line 543
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    instance-of v1, p1, Lae/com/sun/xml/bind/CycleRecoverable;

    if-eqz v1, :cond_2

    .line 522
    check-cast p1, Lae/com/sun/xml/bind/CycleRecoverable;

    .end local p1    # "obj":Ljava/lang/Object;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer$1;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    invoke-interface {p1, v1}, Lae/com/sun/xml/bind/CycleRecoverable;->onCycleDetected(Lae/com/sun/xml/bind/CycleRecoverable$Context;)Ljava/lang/Object;

    move-result-object p1

    .line 527
    .restart local p1    # "obj":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 531
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    .line 532
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->pushObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_2
    new-instance v1, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->CYCLE_IN_MARSHALLER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->getCycleString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3, v0}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    goto :goto_0
.end method

.method private reportMissingObjectError(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1046
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->MISSING_OBJECT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v2

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {v0, v4, v1, v2, v3}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 1051
    return-void
.end method

.method private startElement()V
    .locals 17

    .prologue
    .line 898
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v12}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->push()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 900
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    if-nez v12, :cond_9

    .line 902
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v12}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getXmlNsSet()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 903
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v12}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getXmlNsSet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lae/javax/xml/bind/annotation/XmlNs;

    .line 904
    .local v11, "xmlNs":Lae/javax/xml/bind/annotation/XmlNs;
    move-object/from16 v0, p0

    iget-object v14, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-interface {v11}, Lae/javax/xml/bind/annotation/XmlNs;->namespaceURI()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11}, Lae/javax/xml/bind/annotation/XmlNs;->prefix()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v12, ""

    :goto_1
    invoke-interface {v11}, Lae/javax/xml/bind/annotation/XmlNs;->prefix()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v15, v12, v13}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_0
    invoke-interface {v11}, Lae/javax/xml/bind/annotation/XmlNs;->prefix()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 912
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v11    # "xmlNs":Lae/javax/xml/bind/annotation/XmlNs;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v4, v12, Lae/com/sun/xml/bind/v2/runtime/NameList;->namespaceURIs:[Ljava/lang/String;

    .line 913
    .local v4, "knownUris":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v12, v4

    if-ge v2, v12, :cond_3

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->knownUri2prefixIndexMap:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    aget-object v14, v4, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/NameList;->nsUriCannotBeDefaulted:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, v2

    invoke-virtual/range {v13 .. v16}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    aput v13, v12, v2

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 918
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v12}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefixMapper()Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    move-result-object v12

    invoke-virtual {v12}, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->getPreDeclaredNamespaceUris()[Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, "uris":[Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 920
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v5, :cond_5

    aget-object v9, v1, v3

    .line 921
    .local v9, "uri":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 922
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 920
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 925
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "uri":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v12}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefixMapper()Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    move-result-object v12

    invoke-virtual {v12}, Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;->getPreDeclaredNamespaceUris2()[Ljava/lang/String;

    move-result-object v7

    .line 926
    .local v7, "pairs":[Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 927
    const/4 v2, 0x0

    :goto_5
    array-length v12, v7

    if-ge v2, v12, :cond_7

    .line 928
    aget-object v8, v7, v2

    .line 929
    .local v8, "prefix":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x1

    aget-object v6, v7, v12

    .line 930
    .local v6, "nsUri":Ljava/lang/String;
    if-eqz v8, :cond_6

    if-eqz v6, :cond_6

    .line 934
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v12, v6, v8}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 938
    .end local v6    # "nsUri":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaLocation:Ljava/lang/String;

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->noNsSchemaLocation:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 939
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const-string v13, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v14, "xsi"

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 943
    .end local v2    # "i":I
    .end local v4    # "knownUris":[Ljava/lang/String;
    .end local v7    # "pairs":[Ljava/lang/String;
    .end local v10    # "uris":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->collectionMode:Z

    .line 944
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    .line 945
    return-void
.end method


# virtual methods
.method public addInscopeBinding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->put(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method public attWildcardAsAttributes(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 777
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 782
    :cond_0
    return-void

    .line 778
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 779
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    .line 780
    .local v2, "n":Ljavax/xml/namespace/QName;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attWildcardAsURIs(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 774
    :cond_0
    return-void

    .line 765
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 766
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/xml/namespace/QName;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/namespace/QName;

    .line 767
    .local v2, "n":Ljavax/xml/namespace/QName;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, "nsUri":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 769
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x0

    .line 771
    :cond_3
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 430
    const/4 v1, -0x1

    .line 436
    .local v1, "prefix":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v2, v1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lae/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    return-void

    .line 432
    .end local v1    # "prefix":I
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefixIndex(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "prefix":I
    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sun/istack/SAXException2;

    invoke-direct {v2, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 439
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 440
    .local v0, "e":Lae/javax/xml/stream/XMLStreamException;
    new-instance v2, Lcom/sun/istack/SAXException2;

    invoke-direct {v2, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public childAsRoot(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 488
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pushNocheck(Ljava/lang/Object;)V

    .line 490
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v1

    .line 491
    .local v1, "lookForLifecycleMethods":Z
    if-eqz v1, :cond_0

    .line 492
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireBeforeMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V

    .line 495
    :cond_0
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeRoot(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 497
    if-eqz v1, :cond_1

    .line 498
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireAfterMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V

    .line 501
    :cond_1
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    .line 502
    return-void
.end method

.method public final childAsSoleContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "child"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 562
    if-nez p1, :cond_0

    .line 563
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleMissingObjectError(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->pushObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 566
    if-nez p1, :cond_1

    .line 568
    invoke-virtual {p0, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 570
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    .line 575
    :cond_1
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 585
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v2

    .line 586
    .local v2, "lookForLifecycleMethods":Z
    if-eqz v2, :cond_2

    .line 587
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireBeforeMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V

    .line 590
    :cond_2
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 591
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 592
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 593
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 594
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 596
    if-eqz v2, :cond_3

    .line 597
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireAfterMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V

    .line 600
    :cond_3
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 576
    .end local v0    # "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v2    # "lookForLifecycleMethods":Z
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    invoke-virtual {p0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    invoke-virtual {p0, v5}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 581
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final childAsXsiType(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Z)V
    .locals 11
    .param p1, "child"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "expected"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p4, "nillable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 629
    if-nez p1, :cond_0

    .line 630
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleMissingObjectError(Ljava/lang/String;)V

    .line 705
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->pushObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 633
    if-nez p1, :cond_1

    .line 634
    invoke-virtual {p0, v10}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 635
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p3, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    if-ne v7, v8, :cond_9

    move v2, v5

    .line 640
    .local v2, "asExpected":Z
    :goto_1
    move-object v0, p3

    .line 641
    .local v0, "actual":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    const/4 v1, 0x0

    .line 643
    .local v1, "actualTypeName":Ljavax/xml/namespace/QName;
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 644
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireBeforeMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V

    .line 647
    :cond_2
    if-nez v2, :cond_4

    .line 649
    :try_start_0
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 651
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireBeforeMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_3
    if-ne v0, p3, :cond_a

    .line 660
    const/4 v2, 0x1

    .line 678
    :cond_4
    :goto_2
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeURIs(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 680
    if-eqz p4, :cond_5

    .line 681
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v6

    const-string v7, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v8, "xsi"

    invoke-interface {v6, v7, v8, v5}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 684
    :cond_5
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 685
    if-nez v2, :cond_6

    .line 686
    const-string v5, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v6, "type"

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v7

    invoke-static {v1, v7}, Lae/javax/xml/bind/DatatypeConverter;->printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_6
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeAttributes(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 691
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isNilIncluded()Z

    move-result v4

    .line 692
    .local v4, "nilDefined":Z
    if-eqz p4, :cond_7

    if-nez v4, :cond_7

    .line 693
    const-string v5, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v6, "nil"

    const-string v7, "true"

    invoke-virtual {p0, v5, v6, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_7
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 697
    invoke-virtual {v0, p1, p0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->serializeBody(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 699
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->lookForLifecycleMethods()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 700
    invoke-direct {p0, v0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fireAfterMarshalEvents(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;)V

    .line 703
    :cond_8
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v5}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .end local v0    # "actual":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .end local v1    # "actualTypeName":Ljavax/xml/namespace/QName;
    .end local v2    # "asExpected":Z
    .end local v4    # "nilDefined":Z
    :cond_9
    move v2, v6

    .line 639
    goto :goto_1

    .line 653
    .restart local v0    # "actual":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .restart local v1    # "actualTypeName":Ljavax/xml/namespace/QName;
    .restart local v2    # "asExpected":Z
    :catch_0
    move-exception v3

    .line 654
    .local v3, "e":Lae/javax/xml/bind/JAXBException;
    invoke-virtual {p0, p2, v3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    invoke-virtual {p0, v10}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 656
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    goto/16 :goto_0

    .line 662
    .end local v3    # "e":Lae/javax/xml/bind/JAXBException;
    :cond_a
    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 663
    if-nez v1, :cond_b

    .line 664
    new-instance v7, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v8, Lae/com/sun/xml/bind/v2/runtime/Messages;->SUBSTITUTED_BY_ANONYMOUS_TYPE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p3, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v6, 0x2

    iget-object v10, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v8, v9}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v8

    invoke-direct {v7, v5, v6, v8}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {p0, v7}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    goto/16 :goto_2

    .line 673
    :cond_b
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v7

    const-string v8, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v9, "xsi"

    invoke-interface {v7, v8, v9, v5}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 674
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10, v6}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public clearCurrentProperty()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 1086
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .line 858
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->clearCurrentProperty()V

    .line 859
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->popCoordinator()V

    .line 860
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->resetThreadAffinity()V

    .line 861
    return-void
.end method

.method public endAttributes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 297
    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    if-nez v1, :cond_2

    .line 298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    .line 299
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaLocation:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->noNsSchemaLocation:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 300
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefixIndex(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "p":I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaLocation:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    const-string v2, "schemaLocation"

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaLocation:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->noNsSchemaLocation:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    const-string v2, "noNamespaceSchemaLocation"

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->noNsSchemaLocation:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v0    # "p":I
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endStartTag()V

    .line 309
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fragment:Z

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endDocument(Z)V

    .line 854
    return-void
.end method

.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->endElement(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V

    .line 317
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->pop()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    .line 319
    return-void
.end method

.method public endNamespaceDecls(Ljava/lang/Object;)V
    .locals 2
    .param p1, "innerPeer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->collectionMode:Z

    .line 289
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-virtual {v0, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->startElement(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public errorMissingId(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1057
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->MISSING_ID:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    invoke-direct {v2, p1}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v4, v1, v2}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 1061
    return-void
.end method

.method public getCachedBase64DataInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;-><init>()V

    return-object v0
.end method

.method public getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1064
    new-instance v0, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentProperty()Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->currentProperty:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/property/Property;

    return-object v0
.end method

.method public getIdentityTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->identityTransformer:Ljavax/xml/transform/Transformer;

    if-nez v0, :cond_0

    .line 814
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->identityTransformer:Ljavax/xml/transform/Transformer;

    .line 815
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->identityTransformer:Ljavax/xml/transform/Transformer;

    return-object v0
.end method

.method public getInlineBinaryFlag()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->inlineBinaryFlag:Z

    return v0
.end method

.method protected getLocation()Lae/javax/xml/bind/ValidationEventLocator;
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    return-object v0
.end method

.method public getObjectIdentityCycleDetection()Z
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->getUseIdentity()Z

    move-result v0

    return v0
.end method

.method public getSchemaType()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaType:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getXMIMEContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 887
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getXMIMEContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 894
    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 891
    .restart local v0    # "v":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->expectedMimeType:Ljavax/activation/MimeType;

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->expectedMimeType:Ljavax/activation/MimeType;

    invoke-virtual {v1}, Ljavax/activation/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleError(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1024
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->peek()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleError(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleError(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1028
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;

    invoke-direct {v3, p2, p3}, Lae/com/sun/xml/bind/util/ValidationEventLocatorExImpl;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    move-result v0

    return v0
.end method

.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    .locals 2
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 1038
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lae/javax/xml/bind/ValidationEventHandler;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1039
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;ILjava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "data"    # I
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->intData:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;

    invoke-virtual {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->reset(I)V

    .line 373
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->intData:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;

    invoke-virtual {p0, p1, v0, p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Ljava/lang/String;)V
    .locals 3
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "data"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 351
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    if-eqz v0, :cond_1

    .line 352
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    .line 353
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->push()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 354
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 355
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endStartTag()V

    .line 356
    if-eqz p2, :cond_0

    .line 357
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    .line 358
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 359
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->pop()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p0, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 366
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v0, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    .line 367
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_0
.end method

.method public leafElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 322
    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    if-eqz v1, :cond_1

    .line 323
    iput-boolean v4, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    .line 324
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->push()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 325
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->beginStartTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 326
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endStartTag()V

    .line 327
    if-eqz p2, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    invoke-interface {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->endTag(Lae/com/sun/xml/bind/v2/runtime/Name;)V

    .line 334
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->pop()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 348
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->ILLEGAL_CONTENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-virtual {p0, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 342
    :try_start_1
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    goto :goto_0

    .line 343
    :catch_1
    move-exception v0

    .line 344
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->ILLEGAL_CONTENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onID(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->objectsWithId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    return-object p2
.end method

.method public onIDREF(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 463
    :try_start_0
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getIdFromObject(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 468
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->idReferencedObjects:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    if-nez v1, :cond_0

    .line 470
    new-instance v2, Lae/javax/xml/bind/helpers/NotIdentifiableEventImpl;

    const/4 v3, 0x1

    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_IDENTIFIABLE:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    invoke-direct {v5, p1}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5}, Lae/javax/xml/bind/helpers/NotIdentifiableEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 475
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    invoke-virtual {p0, v1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method reconcileID()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->idReferencedObjects:Ljava/util/Set;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->objectsWithId:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1006
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->idReferencedObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1008
    .local v2, "idObj":Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getIdFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "id":Ljava/lang/String;
    new-instance v3, Lae/javax/xml/bind/helpers/NotIdentifiableEventImpl;

    const/4 v4, 0x1

    sget-object v5, Lae/com/sun/xml/bind/v2/runtime/Messages;->DANGLING_IDREF:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;

    invoke-direct {v6, v2}, Lae/javax/xml/bind/helpers/ValidationEventLocatorImpl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v6}, Lae/javax/xml/bind/helpers/NotIdentifiableEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;)V

    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1013
    .end local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1019
    .end local v2    # "idObj":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->idReferencedObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1020
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->objectsWithId:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1021
    return-void
.end method

.method public reportError(Lae/javax/xml/bind/ValidationEvent;)V
    .locals 4
    .param p1, "ve"    # Lae/javax/xml/bind/ValidationEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->marshaller:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->getEventHandler()Lae/javax/xml/bind/ValidationEventHandler;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    .local v1, "handler":Lae/javax/xml/bind/ValidationEventHandler;
    invoke-interface {v1, p1}, Lae/javax/xml/bind/ValidationEventHandler;->handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getLinkedException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 248
    new-instance v3, Lcom/sun/istack/SAXException2;

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getLinkedException()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 242
    .end local v1    # "handler":Lae/javax/xml/bind/ValidationEventHandler;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lcom/sun/istack/SAXException2;

    invoke-direct {v2, v0}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 250
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    .restart local v1    # "handler":Lae/javax/xml/bind/ValidationEventHandler;
    :cond_0
    new-instance v2, Lcom/sun/istack/SAXException2;

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_1
    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lae/javax/xml/bind/helpers/ValidationEventImpl;

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getCurrentLocation(Ljava/lang/String;)Lae/javax/xml/bind/ValidationEventLocator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Lae/javax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Lae/javax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    .line 263
    .local v0, "ve":Lae/javax/xml/bind/ValidationEvent;
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Lae/javax/xml/bind/ValidationEvent;)V

    .line 264
    return-void
.end method

.method public setExpectedMimeType(Ljavax/activation/MimeType;)Ljavax/activation/MimeType;
    .locals 1
    .param p1, "expectedMimeType"    # Ljavax/activation/MimeType;

    .prologue
    .line 954
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->expectedMimeType:Ljavax/activation/MimeType;

    .line 955
    .local v0, "old":Ljavax/activation/MimeType;
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->expectedMimeType:Ljavax/activation/MimeType;

    .line 956
    return-object v0
.end method

.method public setInlineBinaryFlag(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 965
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->inlineBinaryFlag:Z

    .line 966
    .local v0, "old":Z
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->inlineBinaryFlag:Z

    .line 967
    return v0
.end method

.method public setObjectIdentityCycleDetection(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 996
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->setUseIdentity(Z)V

    .line 997
    return-void
.end method

.method public setPrefixMapper(Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;)V
    .locals 1
    .param p1, "prefixMapper"    # Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;

    .prologue
    .line 819
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->setPrefixMapper(Lae/com/sun/xml/bind/marshaller/NamespacePrefixMapper;)V

    .line 820
    return-void
.end method

.method public setSchemaType(Ljavax/xml/namespace/QName;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p1, "st"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 986
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaType:Ljavax/xml/namespace/QName;

    .line 987
    .local v0, "old":Ljavax/xml/namespace/QName;
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaType:Ljavax/xml/namespace/QName;

    .line 988
    return-object v0
.end method

.method public startDocument(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .param p2, "fragment"    # Z
    .param p3, "schemaLocation"    # Ljava/lang/String;
    .param p4, "noNsSchemaLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 831
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->setThreadAffinity()V

    .line 832
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->pushCoordinator()V

    .line 833
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->reset()V

    .line 834
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    .line 835
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attachmentMarshaller:Lae/javax/xml/bind/attachment/AttachmentMarshaller;

    invoke-virtual {v1}, Lae/javax/xml/bind/attachment/AttachmentMarshaller;->isXOPPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;

    invoke-direct {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/output/MTOMXmlOutput;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;)V

    .end local p1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .local v0, "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    move-object p1, v0

    .line 837
    .end local v0    # "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    .restart local p1    # "out":Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    .line 838
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->objectsWithId:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 839
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->idReferencedObjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 840
    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    .line 841
    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->seenRoot:Z

    .line 842
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->schemaLocation:Ljava/lang/String;

    .line 843
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->noNsSchemaLocation:Ljava/lang/String;

    .line 844
    iput-boolean p2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->fragment:Z

    .line 845
    iput-boolean v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->inlineBinaryFlag:Z

    .line 846
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->expectedMimeType:Ljavax/activation/MimeType;

    .line 847
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->cycleDetectionStack:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->reset()V

    .line 849
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->knownUri2prefixIndexMap:[I

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-interface {p1, p0, p2, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->startDocument(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Z[ILae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;)V

    .line 850
    return-void
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "outerPeer"    # Ljava/lang/Object;

    .prologue
    .line 267
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement()V

    .line 268
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->setTagName(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "preferredPrefix"    # Ljava/lang/String;
    .param p4, "outerPeer"    # Ljava/lang/Object;

    .prologue
    .line 272
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement()V

    .line 273
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->declareNsUri(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 274
    .local v0, "idx":I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v1, v0, p2, p4}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->setTagName(ILjava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public startElementForce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "forcedPrefix"    # Ljava/lang/String;
    .param p4, "outerPeer"    # Ljava/lang/Object;

    .prologue
    .line 282
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement()V

    .line 283
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v1, p1, p3}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->force(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "idx":I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->nse:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    invoke-virtual {v1, v0, p2, p4}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->setTagName(ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportMissingObjectError(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;Z)V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    goto :goto_0
.end method

.method public text(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportMissingObjectError(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->out:Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;

    iget-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    invoke-interface {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;->text(Ljava/lang/String;Z)V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->textHasAlreadyPrinted:Z

    goto :goto_0
.end method

.method public writeDom(Ljava/lang/Object;Lae/javax/xml/bind/annotation/DomHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p3, "parentBean"    # Ljava/lang/Object;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lae/javax/xml/bind/annotation/DomHandler",
            "<TE;*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "element":Ljava/lang/Object;, "TE;"
    .local p2, "domHandler":Lae/javax/xml/bind/annotation/DomHandler;, "Lae/javax/xml/bind/annotation/DomHandler<TE;*>;"
    invoke-interface {p2, p1, p0}, Lae/javax/xml/bind/annotation/DomHandler;->marshal(Ljava/lang/Object;Lae/javax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;

    move-result-object v1

    .line 803
    .local v1, "source":Ljavax/xml/transform/Source;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->contentHandlerAdapter:Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;

    if-nez v2, :cond_0

    .line 804
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;

    invoke-direct {v2, p0}, Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;-><init>(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->contentHandlerAdapter:Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;

    .line 806
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getIdentityTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/sax/SAXResult;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->contentHandlerAdapter:Lae/com/sun/xml/bind/v2/runtime/ContentHandlerAdaptor;

    invoke-direct {v3, v4}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v2, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {p0, p4, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final writeXsiNilTrue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getNamespaceContext()Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v2, "xsi"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/NamespaceContext2;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 796
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 797
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v1, "nil"

    const-string v2, "true"

    invoke-virtual {p0, v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 799
    return-void
.end method
