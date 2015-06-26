.class public final Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
.super Lae/com/sun/xml/bind/api/JAXBRIContext;
.source "JAXBContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final QNAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private static db:Ljavax/xml/parsers/DocumentBuilder;

.field private static volatile tf:Ljavax/xml/transform/sax/SAXTransformerFactory;


# instance fields
.field public final allNillable:Z

.field private annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation
.end field

.field private final beanInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected beanInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bridges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            "Lae/com/sun/xml/bind/api/Bridge;",
            ">;"
        }
    .end annotation
.end field

.field protected final c14nSupport:Z

.field private final classes:[Ljava/lang/Class;

.field private final defaultNsUri:Ljava/lang/String;

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field public final fastBoot:Z

.field private hasSwaRef:Z

.field public final improvedXsiTypeHandling:Z

.field public final marshallerPool:Lcom/sun/istack/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/Pool",
            "<",
            "Lae/javax/xml/bind/Marshaller;",
            ">;"
        }
    .end annotation
.end field

.field public nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

.field public final nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

.field public final retainPropertyInfo:Z

.field private final rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/QNameMap",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final subclassReplacements:Ljava/util/Map;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final supressAccessorWarnings:Z

.field private typeInfoSetCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;",
            ">;"
        }
    .end annotation
.end field

.field private final typeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/xml/namespace/QName;",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final unmarshallerPool:Lcom/sun/istack/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/Pool",
            "<",
            "Lae/javax/xml/bind/Unmarshaller;",
            ">;"
        }
    .end annotation
.end field

.field private utf8nameTable:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

.field public final xmlAccessorFactorySupport:Z

.field private xmlNsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/javax/xml/bind/annotation/XmlNs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->$assertionsDisabled:Z

    .line 1052
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$7;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$7;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)V
    .locals 40
    .param p1, "builder"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct/range {p0 .. p0}, Lae/com/sun/xml/bind/api/JAXBRIContext;-><init>()V

    .line 147
    new-instance v35, Ljava/util/LinkedHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->bridges:Ljava/util/Map;

    .line 163
    new-instance v35, Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-direct/range {v35 .. v35}, Lae/com/sun/xml/bind/v2/util/QNameMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    .line 164
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    .line 169
    new-instance v35, Ljava/util/LinkedHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    .line 180
    new-instance v35, Ljava/util/LinkedHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    .line 182
    new-instance v35, Ljava/util/LinkedHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->elements:Ljava/util/Map;

    .line 187
    new-instance v35, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->marshallerPool:Lcom/sun/istack/Pool;

    .line 193
    new-instance v35, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$2;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$2;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->unmarshallerPool:Lcom/sun/istack/Pool;

    .line 203
    new-instance v35, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    invoke-direct/range {v35 .. v35}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    .line 263
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlNsSet:Ljava/util/Set;

    .line 276
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$000(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->defaultNsUri:Ljava/lang/String;

    .line 277
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->retainPropertyInfo:Z
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$100(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->retainPropertyInfo:Z

    .line 278
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$200(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 279
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$300(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Ljava/util/Map;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->subclassReplacements:Ljava/util/Map;

    .line 280
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->c14nSupport:Z
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$400(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->c14nSupport:Z

    .line 281
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->classes:[Ljava/lang/Class;
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$500(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)[Ljava/lang/Class;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    .line 282
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->xmlAccessorFactorySupport:Z
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$600(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlAccessorFactorySupport:Z

    .line 283
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->allNillable:Z
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$700(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->allNillable:Z

    .line 284
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->supressAccessorWarnings:Z
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$800(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->supressAccessorWarnings:Z

    .line 285
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->improvedXsiTypeHandling:Z
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$900(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->improvedXsiTypeHandling:Z

    .line 287
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->typeRefs:Ljava/util/Collection;
    invoke-static/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->access$1000(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Ljava/util/Collection;

    move-result-object v30

    .line 291
    .local v30, "typeRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    :try_start_0
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-class v36, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ".fastBoot"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 295
    .local v17, "fastB":Z
    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->fastBoot:Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    invoke-static/range {v35 .. v39}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;

    move-result-object v31

    .line 302
    .local v31, "typeSet":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->elements:Ljava/util/Map;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/util/LinkedHashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {v35 .. v37}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v35, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;->builtinBeanInfos:Ljava/util/List;

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lae/com/sun/xml/bind/v2/model/impl/RuntimeBuiltinLeafInfoImpl;

    .line 306
    .local v20, "leaf":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeBuiltinLeafInfo;
    new-instance v10, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;)V

    .line 307
    .local v10, "bi":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-interface/range {v20 .. v20}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeBuiltinLeafInfo;->getClazz()Ljava/lang/Class;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v10}, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;->getTypeNames()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavax/xml/namespace/QName;

    .line 309
    .local v28, "t":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 292
    .end local v10    # "bi":Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl<*>;"
    .end local v17    # "fastB":Z
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "leaf":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeBuiltinLeafInfo;
    .end local v28    # "t":Ljavax/xml/namespace/QName;
    .end local v31    # "typeSet":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    :catch_0
    move-exception v13

    .line 293
    .local v13, "e":Ljava/lang/SecurityException;
    const/16 v17, 0x0

    .restart local v17    # "fastB":Z
    goto/16 :goto_0

    .line 312
    .end local v13    # "e":Ljava/lang/SecurityException;
    .restart local v31    # "typeSet":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    :cond_1
    invoke-interface/range {v31 .. v31}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->enums()Ljava/util/Map;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;

    .line 313
    .local v13, "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v9

    .line 314
    .local v9, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<*>;"
    invoke-virtual {v9}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeNames()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavax/xml/namespace/QName;

    .line 315
    .local v25, "qn":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 316
    .end local v25    # "qn":Ljavax/xml/namespace/QName;
    :cond_3
    invoke-interface {v13}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;->isElement()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    move-object/from16 v35, v0

    invoke-interface {v13}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    goto :goto_2

    .line 320
    .end local v9    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<*>;"
    .end local v13    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v31 .. v31}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->arrays()Ljava/util/Map;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;

    .line 321
    .local v4, "a":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v6

    .line 322
    .local v6, "ai":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<*>;"
    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getTypeNames()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavax/xml/namespace/QName;

    .line 323
    .restart local v25    # "qn":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 326
    .end local v4    # "a":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;
    .end local v6    # "ai":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<*>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "qn":Ljavax/xml/namespace/QName;
    :cond_6
    invoke-interface/range {v31 .. v31}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->beans()Ljava/util/Map;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 327
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;+Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;)Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    move-result-object v8

    .line 329
    .local v8, "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    move-object/from16 v35, v0

    const-class v36, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v37

    const/16 v38, 0x0

    invoke-interface/range {v35 .. v38}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v34

    check-cast v34, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 330
    .local v34, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v34, :cond_9

    .line 331
    invoke-interface/range {v34 .. v34}, Lae/javax/xml/bind/annotation/XmlSchema;->xmlns()[Lae/javax/xml/bind/annotation/XmlNs;

    move-result-object v35

    if-eqz v35, :cond_9

    invoke-interface/range {v34 .. v34}, Lae/javax/xml/bind/annotation/XmlSchema;->xmlns()[Lae/javax/xml/bind/annotation/XmlNs;

    move-result-object v35

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_9

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlNsSet:Ljava/util/Set;

    move-object/from16 v35, v0

    if-nez v35, :cond_8

    .line 333
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlNsSet:Ljava/util/Set;

    .line 334
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlNsSet:Ljava/util/Set;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v34}, Lae/javax/xml/bind/annotation/XmlSchema;->xmlns()[Lae/javax/xml/bind/annotation/XmlNs;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 338
    :cond_9
    invoke-virtual {v8}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->isElement()Z

    move-result v35

    if-eqz v35, :cond_a

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    move-object/from16 v36, v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    invoke-interface/range {v35 .. v35}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v8}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 341
    :cond_a
    invoke-virtual {v8}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->getTypeNames()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavax/xml/namespace/QName;

    .line 342
    .restart local v25    # "qn":Ljavax/xml/namespace/QName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 346
    .end local v8    # "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;, "Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl<*>;"
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;+Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v25    # "qn":Ljavax/xml/namespace/QName;
    .end local v34    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_b
    invoke-interface/range {v31 .. v31}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getAllElements()Ljava/lang/Iterable;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;

    .line 347
    .local v22, "n":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;)Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    move-result-object v7

    .line 348
    .local v7, "bi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    invoke-interface/range {v22 .. v22}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v35

    if-nez v35, :cond_c

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    move-object/from16 v35, v0

    invoke-interface/range {v22 .. v22}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v7}, Lae/com/sun/xml/bind/v2/util/QNameMap;->put(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 351
    :cond_c
    invoke-interface/range {v22 .. v22}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v26

    .line 352
    .local v26, "scope":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
    if-nez v26, :cond_e

    const/16 v27, 0x0

    .line 353
    .local v27, "scopeClazz":Ljava/lang/Class;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->elements:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    .line 354
    .local v21, "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    if-nez v21, :cond_d

    .line 355
    new-instance v21, Ljava/util/LinkedHashMap;

    .end local v21    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedHashMap;-><init>()V

    .line 356
    .restart local v21    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->elements:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_d
    invoke-interface/range {v22 .. v22}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 352
    .end local v21    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    .end local v27    # "scopeClazz":Ljava/lang/Class;
    :cond_e
    invoke-interface/range {v26 .. v26}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Class;

    move-object/from16 v27, v35

    goto :goto_7

    .line 362
    .end local v7    # "bi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    .end local v22    # "n":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
    .end local v26    # "scope":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    move-object/from16 v35, v0

    const-class v36, Lae/javax/xml/bind/JAXBElement;

    new-instance v37, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    invoke-interface/range {v35 .. v37}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    move-object/from16 v35, v0

    const-class v36, Lae/com/sun/xml/bind/api/CompositeStructure;

    new-instance v37, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/CompositeStructureBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    invoke-interface/range {v35 .. v37}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface/range {v31 .. v31}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 370
    .local v7, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->link(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    goto :goto_8

    .line 373
    .end local v7    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_10
    sget-object v35, Lae/com/sun/xml/bind/v2/runtime/RuntimeUtil;->primitiveToBox:Ljava/util/Map;

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 374
    .local v15, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    move-object/from16 v37, v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v38

    invoke-interface/range {v37 .. v38}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    invoke-interface/range {v35 .. v37}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 377
    .end local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    :cond_11
    invoke-interface/range {v31 .. v31}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    move-result-object v24

    .line 379
    .local v24, "nav":Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lae/com/sun/xml/bind/api/TypeReference;

    .line 380
    .local v29, "tr":Lae/com/sun/xml/bind/api/TypeReference;
    const-class v35, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/api/TypeReference;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v32

    check-cast v32, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 381
    .local v32, "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    const/4 v5, 0x0

    .line 382
    .local v5, "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    const-class v35, Lae/javax/xml/bind/annotation/XmlList;

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/api/TypeReference;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lae/javax/xml/bind/annotation/XmlList;

    .line 385
    .local v33, "xl":Lae/javax/xml/bind/annotation/XmlList;
    move-object/from16 v0, v29

    iget-object v0, v0, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    move-object/from16 v35, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v16

    .line 387
    .local v16, "erasedType":Ljava/lang/Class;
    if-eqz v32, :cond_12

    .line 388
    new-instance v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .end local v5    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    invoke-interface/range {v32 .. v32}, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;->value()Ljava/lang/Class;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .line 390
    .restart local v5    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :cond_12
    const-class v35, Lae/javax/xml/bind/annotation/XmlAttachmentRef;

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/api/TypeReference;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v35

    if-eqz v35, :cond_13

    .line 391
    new-instance v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .end local v5    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    const-class v35, Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .line 392
    .restart local v5    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->hasSwaRef:Z

    .line 395
    :cond_13
    if-eqz v5, :cond_14

    .line 396
    iget-object v0, v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/reflect/Type;

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v16

    .line 399
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    move-object/from16 v35, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->createElementName(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/Name;

    move-result-object v23

    .line 402
    .local v23, "name":Lae/com/sun/xml/bind/v2/runtime/Name;
    if-nez v33, :cond_15

    .line 403
    new-instance v11, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-direct {v11, v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Lae/com/sun/xml/bind/api/TypeReference;)V

    .local v11, "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    move-object v12, v11

    .line 407
    .end local v11    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .local v12, "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    :goto_b
    if-eqz v5, :cond_18

    .line 408
    new-instance v11, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;

    iget-object v0, v5, Lae/com/sun/xml/bind/v2/model/core/Adapter;->adapterType:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/Class;

    move-object/from16 v0, v35

    invoke-direct {v11, v12, v0}, Lae/com/sun/xml/bind/v2/runtime/BridgeAdapter;-><init>(Lae/com/sun/xml/bind/v2/runtime/InternalBridge;Ljava/lang/Class;)V

    .line 410
    .end local v12    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .restart local v11    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->bridges:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 405
    .end local v11    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    :cond_15
    new-instance v11, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;

    new-instance v35, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/ValueListBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v35

    move-object/from16 v3, v29

    invoke-direct {v11, v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/BridgeImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Lae/com/sun/xml/bind/api/TypeReference;)V

    .restart local v11    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    move-object v12, v11

    .end local v11    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .restart local v12    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    goto :goto_b

    .line 413
    .end local v5    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    .end local v12    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .end local v16    # "erasedType":Ljava/lang/Class;
    .end local v23    # "name":Lae/com/sun/xml/bind/v2/runtime/Name;
    .end local v29    # "tr":Lae/com/sun/xml/bind/api/TypeReference;
    .end local v32    # "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v33    # "xl":Lae/javax/xml/bind/annotation/XmlList;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lae/com/sun/xml/bind/v2/runtime/NameBuilder;->conclude()Lae/com/sun/xml/bind/v2/runtime/NameList;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_17

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 416
    .restart local v7    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-virtual {v7}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->wrapUp()V

    goto :goto_d

    .line 419
    .end local v7    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_17
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameBuilder:Lae/com/sun/xml/bind/v2/runtime/NameBuilder;

    .line 420
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    .line 421
    return-void

    .restart local v5    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    .restart local v12    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .restart local v16    # "erasedType":Ljava/lang/Class;
    .restart local v23    # "name":Lae/com/sun/xml/bind/v2/runtime/Name;
    .restart local v29    # "tr":Lae/com/sun/xml/bind/api/TypeReference;
    .restart local v32    # "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .restart local v33    # "xl":Lae/javax/xml/bind/annotation/XmlList;
    :cond_18
    move-object v11, v12

    .end local v12    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    .restart local v11    # "bridge":Lae/com/sun/xml/bind/v2/runtime/InternalBridge;
    goto :goto_c
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)V

    return-void
.end method

.method static synthetic access$1100(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 142
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->defaultNsUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 142
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    return-object v0
.end method

.method static synthetic access$1300(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 142
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->subclassReplacements:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 142
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1500(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    .line 142
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->bridges:Ljava/util/Map;

    return-object v0
.end method

.method static createDom()Lorg/w3c/dom/Document;
    .locals 4

    .prologue
    .line 757
    const-class v3, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    monitor-enter v3

    .line 758
    :try_start_0
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->db:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 760
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 761
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 762
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->db:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    :cond_0
    :try_start_2
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 763
    :catch_0
    move-exception v1

    .line 765
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljavax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v2, v1}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 769
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private createSchemaGenerator()Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 860
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    :try_end_0
    .catch Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 866
    .local v5, "tis":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    new-instance v8, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;-><init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;)V

    .line 872
    .local v8, "xsdgen":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 873
    .local v4, "rootTagNames":Ljava/util/Set;, "Ljava/util/Set<Ljavax/xml/namespace/QName;>;"
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getAllElements()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;

    .line 874
    .local v2, "ei":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 861
    .end local v2    # "ei":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "rootTagNames":Ljava/util/Set;, "Ljava/util/Set<Ljavax/xml/namespace/QName;>;"
    .end local v5    # "tis":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    .end local v8    # "xsdgen":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 876
    .end local v1    # "e":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "rootTagNames":Ljava/util/Set;, "Ljava/util/Set<Ljavax/xml/namespace/QName;>;"
    .restart local v5    # "tis":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    .restart local v8    # "xsdgen":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;>;"
    :cond_0
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->beans()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .line 877
    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->isElement()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 878
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;->asElement()Lae/com/sun/xml/bind/v2/model/core/Element;

    move-result-object v9

    invoke-interface {v9}, Lae/com/sun/xml/bind/v2/model/core/Element;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 881
    .end local v0    # "ci":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
    :cond_2
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->bridges:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/api/TypeReference;

    .line 882
    .local v6, "tr":Lae/com/sun/xml/bind/api/TypeReference;
    iget-object v9, v6, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 885
    iget-object v9, v6, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v9, v11, :cond_4

    iget-object v9, v6, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    const-class v11, Ljava/lang/Void;

    if-ne v9, v11, :cond_5

    .line 886
    :cond_4
    iget-object v9, v6, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Ljavax/xml/namespace/QName;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    goto :goto_2

    .line 888
    :cond_5
    iget-object v9, v6, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    const-class v11, Lae/com/sun/xml/bind/api/CompositeStructure;

    if-eq v9, v11, :cond_3

    .line 891
    invoke-direct {p0, v5, v6}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getXmlType(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;Lae/com/sun/xml/bind/api/TypeReference;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v7

    .line 892
    .local v7, "typeInfo":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    iget-object v11, v6, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    sget-object v9, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    iget-object v12, v6, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v9, v12}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v8, v11, v9, v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Ljavax/xml/namespace/QName;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    goto :goto_2

    :cond_6
    move v9, v10

    goto :goto_3

    .line 895
    .end local v6    # "tr":Lae/com/sun/xml/bind/api/TypeReference;
    .end local v7    # "typeInfo":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :cond_7
    return-object v8
.end method

.method static createTransformer()Ljavax/xml/transform/Transformer;
    .locals 3

    .prologue
    .line 722
    :try_start_0
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v1, :cond_1

    .line 723
    const-class v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v1, :cond_0

    .line 725
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/sax/SAXTransformerFactory;

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 727
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :cond_1
    :try_start_2
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    return-object v1

    .line 727
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 3

    .prologue
    .line 740
    :try_start_0
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v1, :cond_1

    .line 741
    const-class v2, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :try_start_1
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    if-nez v1, :cond_0

    .line 743
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/sax/SAXTransformerFactory;

    sput-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 745
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :cond_1
    :try_start_2
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->tf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    return-object v1

    .line 745
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;)Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    .locals 2
    .param p1, "rei"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;

    .prologue
    .line 492
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 493
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz v0, :cond_0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    .line 496
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :goto_0
    return-object v0

    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;)V

    goto :goto_0
.end method

.method private getXmlType(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;Lae/com/sun/xml/bind/api/TypeReference;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 6
    .param p1, "tis"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    .param p2, "tr"    # Lae/com/sun/xml/bind/api/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ")",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    if-nez p2, :cond_0

    .line 803
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 805
    :cond_0
    const-class v1, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    invoke-virtual {p2, v1}, Lae/com/sun/xml/bind/api/TypeReference;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 806
    .local v4, "xjta":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    const-class v1, Lae/javax/xml/bind/annotation/XmlList;

    invoke-virtual {p2, v1}, Lae/com/sun/xml/bind/api/TypeReference;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lae/javax/xml/bind/annotation/XmlList;

    .line 808
    .local v5, "xl":Lae/javax/xml/bind/annotation/XmlList;
    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/Ref;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getNavigator()Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    move-result-object v2

    iget-object v3, p2, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/model/core/Ref;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;Ljava/lang/Object;Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/javax/xml/bind/annotation/XmlList;)V

    .line 810
    .local v0, "ref":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    invoke-interface {p1, v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;->getTypeInfo(Lae/com/sun/xml/bind/v2/model/core/Ref;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAugmented(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1043
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    .line 1044
    .local v1, "newList":[Ljava/lang/Class;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1045
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    array-length v2, v2

    aput-object p1, v1, v2

    .line 1047
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    .line 1048
    .local v0, "builder":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setClasses([Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 1049
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->build()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v2

    return-object v2
.end method

.method public createBinder()Lae/javax/xml/bind/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/javax/xml/bind/Binder",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;

    new-instance v1, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;

    invoke-direct {v1}, Lae/com/sun/xml/bind/unmarshaller/DOMScanner;-><init>()V

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/BinderImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/unmarshaller/InfosetScanner;)V

    return-object v0
.end method

.method public createBinder(Ljava/lang/Class;)Lae/javax/xml/bind/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/Binder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p1, "domType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createBinder()Lae/javax/xml/bind/Binder;

    move-result-object v0

    .line 927
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/JAXBRIContext;->createBinder(Ljava/lang/Class;)Lae/javax/xml/bind/Binder;

    move-result-object v0

    goto :goto_0
.end method

.method public createBridge(Lae/com/sun/xml/bind/api/TypeReference;)Lae/com/sun/xml/bind/api/Bridge;
    .locals 1
    .param p1, "ref"    # Lae/com/sun/xml/bind/api/TypeReference;

    .prologue
    .line 950
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->bridges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/api/Bridge;

    return-object v0
.end method

.method public createBridgeContext()Lae/com/sun/xml/bind/api/BridgeContext;
    .locals 1
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

    .prologue
    .line 954
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/BridgeContextImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    return-object v0
.end method

.method public createJAXBIntrospector()Lae/javax/xml/bind/JAXBIntrospector;
    .locals 1

    .prologue
    .line 786
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$3;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$3;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    return-object v0
.end method

.method public createMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;
    .locals 2

    .prologue
    .line 773
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V

    return-object v0
.end method

.method public bridge synthetic createMarshaller()Lae/javax/xml/bind/Marshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createMarshaller()Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    move-result-object v0

    return-object v0
.end method

.method public createTestResolver()Lae/javax/xml/bind/SchemaOutputResolver;
    .locals 1

    .prologue
    .line 913
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$5;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$5;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V

    return-object v0
.end method

.method public createUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;
    .locals 2

    .prologue
    .line 777
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/AssociationMap;)V

    return-object v0
.end method

.method public bridge synthetic createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createUnmarshaller()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallerImpl;

    move-result-object v0

    return-object v0
.end method

.method public createValidator()Lae/javax/xml/bind/Validator;
    .locals 3

    .prologue
    .line 781
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/Messages;->NOT_IMPLEMENTED_IN_2_0:Lae/com/sun/xml/bind/v2/runtime/Messages;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateEpisode(Ljavax/xml/transform/Result;)V
    .locals 2
    .param p1, "output"    # Ljavax/xml/transform/Result;

    .prologue
    .line 815
    if-nez p1, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 817
    :cond_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createSchemaGenerator()Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/xml/txw2/output/ResultFactory;->createSerializer(Ljavax/xml/transform/Result;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->writeEpisodeFile(Lcom/sun/xml/txw2/output/XmlSerializer;)V

    .line 818
    return-void
.end method

.method public generateSchema(Lae/javax/xml/bind/SchemaOutputResolver;)V
    .locals 6
    .param p1, "outputResolver"    # Lae/javax/xml/bind/SchemaOutputResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lae/com/sun/xml/bind/v2/runtime/Messages;->NULL_OUTPUT_RESOLVER:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 826
    :cond_0
    new-array v0, v3, [Lorg/xml/sax/SAXParseException;

    .line 827
    .local v0, "e":[Lorg/xml/sax/SAXParseException;
    new-array v1, v3, [Lorg/xml/sax/SAXParseException;

    .line 829
    .local v1, "w":[Lorg/xml/sax/SAXParseException;
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->createSchemaGenerator()Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    move-result-object v3

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;

    invoke-direct {v4, p0, v0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$4;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;[Lorg/xml/sax/SAXParseException;[Lorg/xml/sax/SAXParseException;)V

    invoke-virtual {v3, p1, v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->write(Lae/javax/xml/bind/SchemaOutputResolver;Lae/com/sun/xml/bind/api/ErrorListener;)V

    .line 845
    aget-object v3, v0, v5

    if-eqz v3, :cond_1

    .line 846
    new-instance v2, Ljava/io/IOException;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/Messages;->FAILED_TO_GENERATE_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 847
    .local v2, "x":Ljava/io/IOException;
    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 848
    throw v2

    .line 850
    .end local v2    # "x":Ljava/io/IOException;
    :cond_1
    aget-object v3, v1, v5

    if-eqz v3, :cond_2

    .line 851
    new-instance v2, Ljava/io/IOException;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/Messages;->ERROR_PROCESSING_SCHEMA:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 852
    .restart local v2    # "x":Ljava/io/IOException;
    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 853
    throw v2

    .line 855
    .end local v2    # "x":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public final getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    return-object v0
.end method

.method public final getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 4
    .param p2, "fatal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 618
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TT;>;"
    if-eqz v0, :cond_0

    .line 621
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TT;>;"
    :goto_0
    return-object v0

    .line 619
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;, "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo<TT;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 620
    new-instance v1, Lae/javax/xml/bind/JAXBException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not known to this context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBeanInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "c":Ljava/lang/Class;
    :goto_0
    const-class v5, Ljava/lang/Object;

    if-eq v2, v5, :cond_2

    .line 563
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 564
    .local v1, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz v1, :cond_1

    .line 572
    .end local v1    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 562
    .restart local v1    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 566
    .end local v1    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_2
    instance-of v5, p1, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_3

    .line 567
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    const-class v6, Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-object v1, v5

    goto :goto_1

    .line 568
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 569
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 570
    .restart local v1    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-nez v1, :cond_0

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 572
    .end local v1    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "fatal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 584
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 585
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz v0, :cond_0

    .line 591
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :goto_0
    return-object v0

    .line 586
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_0
    if-eqz p2, :cond_2

    .line 587
    instance-of v1, p1, Lorg/w3c/dom/Document;

    if-eqz v1, :cond_1

    .line 588
    new-instance v1, Lae/javax/xml/bind/JAXBException;

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->ELEMENT_NEEDED_BUT_FOUND_DOCUMENT:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :cond_1
    new-instance v1, Lae/javax/xml/bind/JAXBException;

    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/Messages;->UNKNOWN_CLASS:Lae/com/sun/xml/bind/v2/runtime/Messages;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 990
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 991
    .local v0, "pkg":Ljava/lang/Package;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 992
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getElement(Ljava/lang/Class;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    .locals 4
    .param p1, "scope"    # Ljava/lang/Class;
    .param p2, "name"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 477
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->elements:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 478
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    if-eqz v1, :cond_0

    .line 479
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    .line 480
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    if-eqz v0, :cond_0

    .line 484
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;
    :goto_0
    return-object v0

    .line 483
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->elements:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    check-cast v1, Ljava/util/Map;

    .line 484
    .restart local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    move-object v0, v2

    goto :goto_0
.end method

.method public getElementName(Ljava/lang/Class;)Ljavax/xml/namespace/QName;
    .locals 4
    .param p1, "o"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 943
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 944
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isElement()Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    const/4 v1, 0x0

    .line 946
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 936
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    .line 937
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->isElement()Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    const/4 v1, 0x0

    .line 939
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getElementNamespaceURI(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getElementLocalName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getElementPropertyAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/api/RawAccessor;
    .locals 10
    .param p1, "wrapperBean"    # Ljava/lang/Class;
    .param p2, "nsUri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 958
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Class;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v2

    .line 959
    .local v2, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    instance-of v7, v2, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-nez v7, :cond_0

    .line 960
    new-instance v7, Lae/javax/xml/bind/JAXBException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a bean"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v3, v2

    .line 962
    check-cast v3, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    .local v3, "cb":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :goto_0
    if-eqz v3, :cond_3

    .line 963
    iget-object v1, v3, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .local v1, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v1, v4

    .line 964
    .local v6, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    invoke-interface {v6, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/property/Property;->getElementPropertyAccessor(Ljava/lang/String;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    .line 965
    .local v0, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    if-eqz v0, :cond_1

    .line 966
    new-instance v7, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;

    invoke-direct {v7, p0, v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$6;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-object v7

    .line 963
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 962
    .end local v0    # "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .end local v6    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_2
    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->superClazz:Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    goto :goto_0

    .line 982
    .end local v1    # "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    new-instance v7, Lae/javax/xml/bind/JAXBException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljavax/xml/namespace/QName;

    invoke-direct {v9, p2, p3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a valid property on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getGlobalType(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 1
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 648
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    return-object v0
.end method

.method public getKnownNamespaceURIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/NameList;->namespaceURIs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNearestTypeName(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 659
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 660
    .local v0, "all":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 661
    .local v1, "i":I
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/namespace/QName;

    .line 662
    .local v5, "qn":Ljavax/xml/namespace/QName;
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 663
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 672
    .end local v5    # "qn":Ljavax/xml/namespace/QName;
    :cond_0
    :goto_1
    return-object v4

    .line 664
    .restart local v5    # "qn":Ljavax/xml/namespace/QName;
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 667
    .end local v5    # "qn":Ljavax/xml/namespace/QName;
    :cond_2
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lae/com/sun/xml/bind/v2/util/EditDistance;->findNearest(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, "nearest":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lae/com/sun/xml/bind/v2/util/EditDistance;->editDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 670
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getNumberOfAttributeNames()I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget v0, v0, Lae/com/sun/xml/bind/v2/runtime/NameList;->numberOfAttributeNames:I

    return v0
.end method

.method public getNumberOfElementNames()I
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget v0, v0, Lae/com/sun/xml/bind/v2/runtime/NameList;->numberOfElementNames:I

    return v0
.end method

.method public getNumberOfLocalNames()I
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/NameList;->localNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method protected getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;)Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    .locals 4
    .param p1, "ci"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .prologue
    .line 508
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    .line 509
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 512
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    .local v1, "bi":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 510
    .end local v1    # "bi":Ljava/lang/Object;
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;)V

    .line 511
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->jaxbType:Ljava/lang/Class;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 512
    .restart local v1    # "bi":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 4
    .param p1, "ai"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;

    .prologue
    .line 516
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 517
    .local v0, "abi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 522
    .end local v0    # "abi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .local v1, "abi":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 519
    .end local v1    # "abi":Ljava/lang/Object;
    .restart local v0    # "abi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;

    .end local v0    # "abi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/ArrayBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;)V

    .line 521
    .restart local v0    # "abi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 522
    .restart local v1    # "abi":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 4
    .param p1, "eli"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeEnumLeafInfo;

    .prologue
    .line 500
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 501
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 504
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .local v1, "bi":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 502
    .end local v1    # "bi":Ljava/lang/Object;
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_0
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;

    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/LeafBeanInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;)V

    .line 503
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    iget-object v3, v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->jaxbType:Ljava/lang/Class;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 504
    .restart local v1    # "bi":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .locals 3
    .param p1, "e"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;

    .prologue
    .line 526
    instance-of v1, p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;

    if-eqz v1, :cond_1

    .line 527
    check-cast p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;

    .end local p1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;)Lae/com/sun/xml/bind/v2/runtime/ElementBeanInfoImpl;

    move-result-object v0

    .line 544
    :cond_0
    :goto_0
    return-object v0

    .line 528
    .restart local p1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    :cond_1
    instance-of v1, p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    if-eqz v1, :cond_2

    .line 529
    check-cast p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    .end local p1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;)Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    move-result-object v0

    goto :goto_0

    .line 530
    .restart local p1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    :cond_2
    instance-of v1, p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeLeafInfo;

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 532
    .local v0, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    sget-boolean v1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 535
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_3
    instance-of v1, p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;

    if-eqz v1, :cond_4

    .line 536
    check-cast p1, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;

    .end local p1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getOrCreate(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeArrayInfo;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v0

    goto :goto_0

    .line 537
    .restart local p1    # "e":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;
    :cond_4
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;->getType()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    .line 539
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 540
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;

    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/AnyTypeBeanInfo;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfo;)V

    .line 542
    .restart local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 547
    .end local v0    # "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getRuntimeTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    .locals 2

    .prologue
    .line 432
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    :try_end_0
    .catch Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 433
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeInfoSetCache:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    .line 446
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeInfoSetCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;

    .line 447
    .local v6, "r":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    if-eqz v6, :cond_0

    .line 472
    :goto_0
    return-object v6

    .line 451
    .end local v6    # "r":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    :cond_0
    new-instance v1, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->subclassReplacements:Ljava/util/Map;

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->defaultNsUri:Ljava/lang/String;

    invoke-direct {v1, p0, v7, v8, v9}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;Ljava/util/Map;Ljava/lang/String;)V

    .line 453
    .local v1, "builder":Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;

    invoke-direct {v3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;-><init>()V

    .line 454
    .local v3, "errorHandler":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;
    invoke-virtual {v1, v3}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->setErrorHandler(Lae/com/sun/xml/bind/v2/model/core/ErrorHandler;)V

    .line 456
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 457
    .local v2, "c":Ljava/lang/Class;
    const-class v7, Lae/com/sun/xml/bind/api/CompositeStructure;

    if-ne v2, v7, :cond_1

    .line 456
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 461
    :cond_1
    new-instance v7, Lae/com/sun/xml/bind/v2/model/core/Ref;

    invoke-direct {v7, v2}, Lae/com/sun/xml/bind/v2/model/core/Ref;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->getTypeInfo(Lae/com/sun/xml/bind/v2/model/core/Ref;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    goto :goto_2

    .line 464
    .end local v2    # "c":Ljava/lang/Class;
    :cond_2
    iget-boolean v7, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->hasSwaRef:Z

    iget-boolean v8, v1, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->hasSwaRef:Z

    or-int/2addr v7, v8

    iput-boolean v7, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->hasSwaRef:Z

    .line 465
    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->link()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;

    move-result-object v6

    .line 467
    .restart local v6    # "r":Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException$Builder;->check()V

    .line 468
    sget-boolean v7, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "if no error was reported, the link must be a success"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 470
    :cond_3
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->typeInfoSetCache:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getTypeName(Lae/com/sun/xml/bind/api/TypeReference;)Ljavax/xml/namespace/QName;
    .locals 3
    .param p1, "tr"    # Lae/com/sun/xml/bind/api/TypeReference;

    .prologue
    .line 900
    :try_start_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getTypeInfoSet()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getXmlType(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeInfoSet;Lae/com/sun/xml/bind/api/TypeReference;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v1

    .line 901
    .local v1, "xt":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catch Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v1    # "xt":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 902
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException;
    .restart local v1    # "xt":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;
    :try_end_1
    .catch Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized getUTF8NameTable()[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .locals 4

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->utf8nameTable:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    if-nez v3, :cond_1

    .line 694
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/NameList;->localNames:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 695
    .local v2, "x":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 696
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->nameList:Lae/com/sun/xml/bind/v2/runtime/NameList;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/NameList;->localNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v0, v3}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/output/Encoded;->compact()V

    .line 698
    aput-object v0, v2, v1

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    :cond_0
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->utf8nameTable:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;

    .line 702
    .end local v1    # "i":I
    .end local v2    # "x":[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->utf8nameTable:[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 693
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getValidRootNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 681
    .local v2, "r":Ljava/util/Set;, "Ljava/util/Set<Ljavax/xml/namespace/QName;>;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->entrySet()Ljava/util/Set;

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

    check-cast v0, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;

    .line 682
    .local v0, "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;->createQName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 684
    .end local v0    # "e":Lae/com/sun/xml/bind/v2/util/QNameMap$Entry;
    :cond_0
    return-object v2
.end method

.method public getXMIMEContentType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 1016
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v2

    .line 1017
    .local v2, "bi":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    instance-of v8, v2, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    if-nez v8, :cond_0

    move-object v8, v9

    .line 1036
    :goto_0
    return-object v8

    :cond_0
    move-object v3, v2

    .line 1020
    check-cast v3, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;

    .line 1021
    .local v3, "cb":Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;
    iget-object v1, v3, Lae/com/sun/xml/bind/v2/runtime/ClassBeanInfoImpl;->properties:[Lae/com/sun/xml/bind/v2/runtime/property/Property;

    .local v1, "arr$":[Lae/com/sun/xml/bind/v2/runtime/property/Property;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v7, v1, v5

    .line 1022
    .local v7, "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    instance-of v8, v7, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    if-eqz v8, :cond_1

    move-object v0, v7

    .line 1023
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;

    .line 1024
    .local v0, "ap":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
    iget-object v8, v0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->attName:Lae/com/sun/xml/bind/v2/runtime/Name;

    const-string v10, "http://www.w3.org/2005/05/xmlmime"

    const-string v11, "contentType"

    invoke-virtual {v8, v10, v11}, Lae/com/sun/xml/bind/v2/runtime/Name;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1026
    :try_start_0
    iget-object v8, v0, Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v8, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1027
    :catch_0
    move-exception v4

    .local v4, "e":Lae/com/sun/xml/bind/api/AccessorException;
    move-object v8, v9

    .line 1028
    goto :goto_0

    .line 1029
    .end local v4    # "e":Lae/com/sun/xml/bind/api/AccessorException;
    :catch_1
    move-exception v4

    .local v4, "e":Lorg/xml/sax/SAXException;
    move-object v8, v9

    .line 1030
    goto :goto_0

    .line 1031
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/ClassCastException;
    move-object v8, v9

    .line 1032
    goto :goto_0

    .line 1021
    .end local v0    # "ap":Lae/com/sun/xml/bind/v2/runtime/property/AttributeProperty;
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v7    # "p":Lae/com/sun/xml/bind/v2/runtime/property/Property;
    :cond_2
    move-object v8, v9

    .line 1036
    goto :goto_0
.end method

.method public getXmlNsSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lae/javax/xml/bind/annotation/XmlNs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlNsSet:Ljava/util/Set;

    return-object v0
.end method

.method public hasSwaRef()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->hasSwaRef:Z

    return v0
.end method

.method public final selectRootLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 4
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "tag"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 632
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->rootMap:Lae/com/sun/xml/bind/v2/util/QNameMap;

    iget-object v2, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/util/QNameMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 633
    .local v0, "beanInfo":Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    if-nez v0, :cond_0

    .line 634
    const/4 v1, 0x0

    .line 636
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getLoader(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Z)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lae/com/sun/xml/bind/util/Which;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Build-Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBuildId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 998
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v5, "\nClasses known to this context:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 1002
    .local v4, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->beanInfoMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 1003
    .local v2, "key":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1005
    .end local v2    # "key":Ljava/lang/Class;
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1006
    .local v3, "name":Ljava/lang/String;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1008
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
