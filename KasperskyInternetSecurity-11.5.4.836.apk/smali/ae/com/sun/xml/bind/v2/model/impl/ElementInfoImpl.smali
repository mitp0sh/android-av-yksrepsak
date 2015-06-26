.class Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;
.source "ElementInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/ElementInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl",
        "<TT;TC;TF;TM;>;",
        "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
        "<TT;TC;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

.field private final contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final elementType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final expectedMimeType:Ljavax/activation/MimeType;

.field private final id:Lae/com/sun/xml/bind/v2/model/core/ID;

.field private final inlineBinary:Z

.field private final isCollection:Z

.field private final method:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final property:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>.PropertyImpl;"
        }
    .end annotation
.end field

.field private final schemaType:Ljavax/xml/namespace/QName;

.field private final scope:Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private substitutionHead:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private substitutionMembers:Lcom/sun/istack/FinalArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/FinalArrayList",
            "<",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation
.end field

.field private final tOfJAXBElementT:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final tagName:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl",
            "<TT;TC;TF;TM;>;TM;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;TF;TM;>;"
    .local p2, "registry":Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl<TT;TC;TF;TM;>;"
    .local p3, "m":Ljava/lang/Object;, "TM;"
    invoke-direct/range {p0 .. p2}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    .line 258
    move-object/from16 v0, p3

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    const-class v10, Lae/javax/xml/bind/annotation/XmlElementDecl;

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v0, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lae/javax/xml/bind/annotation/XmlElementDecl;

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    .line 260
    sget-boolean v9, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 261
    :cond_0
    sget-boolean v9, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    instance-of v9, v9, Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 263
    :cond_1
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getReturnType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->elementType:Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->elementType:Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    const-class v12, Lae/javax/xml/bind/JAXBElement;

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, "baseClass":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_2

    .line 266
    new-instance v9, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v10, Lae/com/sun/xml/bind/v2/model/impl/Messages;->XML_ELEMENT_MAPPING_ON_NON_IXMLELEMENT_METHOD:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v13, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-direct {v9, v10, v11}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    throw v9

    .line 270
    :cond_2
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-virtual {p0, v9}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->parseElementName(Lae/javax/xml/bind/annotation/XmlElementDecl;)Ljavax/xml/namespace/QName;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tagName:Ljavax/xml/namespace/QName;

    .line 271
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 274
    .local v5, "methodParams":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 275
    .local v1, "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    array-length v9, v5

    if-lez v9, :cond_3

    .line 276
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    const-class v10, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v0, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;

    .line 277
    .local v2, "adapter":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    if-eqz v2, :cond_4

    .line 278
    new-instance v1, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .end local v1    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v10

    invoke-direct {v1, v2, v9, v10}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .line 287
    .end local v2    # "adapter":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .restart local v1    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    :cond_3
    :goto_0
    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .line 290
    array-length v9, v5

    if-lez v9, :cond_5

    const/4 v9, 0x0

    aget-object v9, v5, v9

    :goto_1
    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tOfJAXBElementT:Ljava/lang/Object;

    .line 294
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    if-nez v9, :cond_7

    .line 295
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tOfJAXBElementT:Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v11

    const-class v12, Ljava/util/List;

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 296
    .local v4, "list":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_6

    .line 297
    const/4 v9, 0x0

    iput-boolean v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->isCollection:Z

    .line 298
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tOfJAXBElementT:Ljava/lang/Object;

    invoke-virtual {p1, v9, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 310
    .end local v4    # "list":Ljava/lang/Object;, "TT;"
    :goto_2
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    const-string v11, "scope"

    invoke-interface {v9, v10, v11}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 311
    .local v6, "s":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v10

    const-class v11, Lae/javax/xml/bind/annotation/XmlElementDecl$GLOBAL;

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 312
    const/4 v9, 0x0

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->scope:Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .line 324
    :goto_3
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->calcId()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->id:Lae/com/sun/xml/bind/v2/model/core/ID;

    .line 326
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->createPropertyImpl()Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->property:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;

    .line 328
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->property:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;

    invoke-static {v9, p1}, Lae/com/sun/xml/bind/v2/model/impl/Util;->calcExpectedMediaType(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)Ljavax/activation/MimeType;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->expectedMimeType:Ljavax/activation/MimeType;

    .line 329
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    const-class v10, Lae/javax/xml/bind/annotation/XmlInlineBinaryData;

    iget-object v11, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->inlineBinary:Z

    .line 330
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->property:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;

    move-object/from16 v0, p2

    iget-object v11, v0, Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;->registryClass:Ljava/lang/Object;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getContentInMemoryType()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v10, v11, v12, p0}, Lae/com/sun/xml/bind/v2/model/impl/Util;->calcSchemaType(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljavax/xml/namespace/QName;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->schemaType:Ljavax/xml/namespace/QName;

    .line 332
    return-void

    .line 280
    .end local v6    # "s":Ljava/lang/Object;, "TT;"
    .restart local v2    # "adapter":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    :cond_4
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v9

    const-class v10, Lae/javax/xml/bind/annotation/XmlAttachmentRef;

    move-object/from16 v0, p3

    invoke-interface {v9, v10, v0, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lae/javax/xml/bind/annotation/XmlAttachmentRef;

    .line 281
    .local v8, "xsa":Lae/javax/xml/bind/annotation/XmlAttachmentRef;
    if-eqz v8, :cond_3

    .line 282
    const-string v9, "in Annotation Processing swaRefAdapter isn\'t avaialble, so this returns null"

    invoke-static {v9}, Lae/com/sun/xml/bind/v2/TODO;->prototype(Ljava/lang/String;)V

    .line 283
    new-instance v1, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .end local v1    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v9, v9, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-class v10, Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;

    invoke-interface {v9, v10}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    iget-object v10, v10, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-direct {v1, v9, v10}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .restart local v1    # "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    goto/16 :goto_0

    .line 290
    .end local v2    # "adapter":Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .end local v8    # "xsa":Lae/javax/xml/bind/annotation/XmlAttachmentRef;
    :cond_5
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_1

    .line 300
    .restart local v4    # "list":Ljava/lang/Object;, "TT;"
    :cond_6
    const/4 v9, 0x1

    iput-boolean v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->isCollection:Z

    .line 301
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v4, v10}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v9, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    goto/16 :goto_2

    .line 305
    .end local v4    # "list":Ljava/lang/Object;, "TT;"
    :cond_7
    iget-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    iget-object v9, v9, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    invoke-virtual {p1, v9, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getTypeInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v9

    iput-object v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 306
    const/4 v9, 0x0

    iput-boolean v9, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->isCollection:Z

    goto/16 :goto_2

    .line 315
    .restart local v6    # "s":Ljava/lang/Object;, "TT;"
    :cond_8
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v9

    invoke-interface {v9, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v9, p0}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->getClassInfo(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v7

    .line 316
    .local v7, "scp":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    instance-of v9, v7, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-nez v9, :cond_9

    .line 317
    new-instance v9, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v10, Lae/com/sun/xml/bind/v2/model/impl/Messages;->SCOPE_IS_NOT_COMPLEXTYPE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v13

    invoke-interface {v13, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-direct {v9, v10, v11}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    throw v9

    .line 321
    :cond_9
    check-cast v7, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .end local v7    # "scp":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    iput-object v7, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->scope:Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tagName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/javax/xml/bind/annotation/XmlElementDecl;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    return-object v0
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->isCollection:Z

    return v0
.end method

.method static synthetic access$400(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    return-object v0
.end method

.method static synthetic access$500(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->id:Lae/com/sun/xml/bind/v2/model/core/ID;

    return-object v0
.end method

.method static synthetic access$600(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/activation/MimeType;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->expectedMimeType:Ljavax/activation/MimeType;

    return-object v0
.end method

.method static synthetic access$700(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->schemaType:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method static synthetic access$800(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->inlineBinary:Z

    return v0
.end method

.method static synthetic access$900(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .prologue
    .line 83
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    return-object v0
.end method

.method private addSubstitutionMember(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    .local p1, "child":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionMembers:Lcom/sun/istack/FinalArrayList;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v0}, Lcom/sun/istack/FinalArrayList;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionMembers:Lcom/sun/istack/FinalArrayList;

    .line 440
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionMembers:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v0, p1}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method private calcId()Lae/com/sun/xml/bind/v2/model/core/ID;
    .locals 3

    .prologue
    .line 391
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    const-class v1, Lae/javax/xml/bind/annotation/XmlID;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->ID:Lae/com/sun/xml/bind/v2/model/core/ID;

    .line 397
    :goto_0
    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v0

    const-class v1, Lae/javax/xml/bind/annotation/XmlIDREF;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    goto :goto_0

    .line 397
    :cond_1
    sget-object v0, Lae/com/sun/xml/bind/v2/model/core/ID;->NONE:Lae/com/sun/xml/bind/v2/model/core/ID;

    goto :goto_0
.end method


# virtual methods
.method public final canBeReferencedByIDREF()Z
    .locals 1

    .prologue
    .line 386
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected createPropertyImpl()Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>.PropertyImpl;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)V

    return-object v0
.end method

.method public getContentInMemoryType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tOfJAXBElementT:Ljava/lang/Object;

    .line 367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->customType:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getContentType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->contentType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method public getElementName()Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 372
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->tagName:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public getLocation()Lae/com/sun/xml/bind/v2/runtime/Location;
    .locals 2

    .prologue
    .line 444
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getMethodLocation(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/runtime/Location;

    move-result-object v0

    return-object v0
.end method

.method public getProperty()Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->property:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;

    return-object v0
.end method

.method public getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->scope:Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    return-object v0
.end method

.method public bridge synthetic getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/Element;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/ElementInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubstitutionHead()Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionHead:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    return-object v0
.end method

.method public getSubstitutionMembers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<TT;TC;TF;TM;>;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionMembers:Lcom/sun/istack/FinalArrayList;

    if-nez v0, :cond_0

    .line 411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionMembers:Lcom/sun/istack/FinalArrayList;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->elementType:Ljava/lang/Object;

    return-object v0
.end method

.method link()V
    .locals 7

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    const/4 v3, 0x0

    .line 421
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlElementDecl;->substitutionHeadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlElementDecl;->substitutionHeadNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlElementDecl;->substitutionHeadName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .local v0, "name":Ljavax/xml/namespace/QName;
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;

    invoke-virtual {v1, v3, v0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoSetImpl;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionHead:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    .line 425
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionHead:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    if-nez v1, :cond_0

    .line 426
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/Messages;->NON_EXISTENT_ELEMENT_MAPPING:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->anno:Lae/javax/xml/bind/annotation/XmlElementDecl;

    invoke-direct {v2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 434
    .end local v0    # "name":Ljavax/xml/namespace/QName;
    :goto_0
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/TypeInfoImpl;->link()V

    .line 435
    return-void

    .line 431
    .restart local v0    # "name":Ljavax/xml/namespace/QName;
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionHead:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    invoke-direct {v1, p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->addSubstitutionMember(Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;)V

    goto :goto_0

    .line 433
    .end local v0    # "name":Ljavax/xml/namespace/QName;
    :cond_1
    iput-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->substitutionHead:Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;

    goto :goto_0
.end method

.method final parseElementName(Lae/javax/xml/bind/annotation/XmlElementDecl;)Ljavax/xml/namespace/QName;
    .locals 7
    .param p1, "e"    # Lae/javax/xml/bind/annotation/XmlElementDecl;

    .prologue
    .line 335
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl<TT;TC;TF;TM;>;"
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementDecl;->name()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "local":Ljava/lang/String;
    invoke-interface {p1}, Lae/javax/xml/bind/annotation/XmlElementDecl;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "nsUri":Ljava/lang/String;
    const-string v3, "##default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->reader()Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    move-result-object v3

    const-class v4, Lae/javax/xml/bind/annotation/XmlSchema;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->nav()Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-result-object v5

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->method:Ljava/lang/Object;

    invoke-interface {v5, v6}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getDeclaringClassForMethod(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lae/javax/xml/bind/annotation/XmlSchema;

    .line 341
    .local v2, "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    if-eqz v2, :cond_1

    .line 342
    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlSchema;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 348
    .end local v2    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_0
    :goto_0
    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 344
    .restart local v2    # "xs":Lae/javax/xml/bind/annotation/XmlSchema;
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    iget-object v1, v3, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->defaultNsUri:Ljava/lang/String;

    goto :goto_0
.end method
