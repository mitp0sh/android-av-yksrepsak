.class Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
.super Ljava/lang/Object;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Namespace"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;,
        Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final arrays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final attributeDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/schemagen/MultiMap",
            "<",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private attributeFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

.field private final classes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private final depends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator",
            "<TT;TC;TF;TM;>.Namespace;>;"
        }
    .end annotation
.end field

.field private final elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/schemagen/MultiMap",
            "<",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator",
            "<TT;TC;TF;TM;>.Namespace.ElementDeclaration;>;"
        }
    .end annotation
.end field

.field private elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

.field private final enums:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private selfReference:Z

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

.field final uri:Ljava/lang/String;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation
.end field

.field private useMimeNs:Z

.field private useSwaRef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    const-class v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;Ljava/lang/String;)V
    .locals 4
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 562
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->depends:Ljava/util/Set;

    .line 524
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;

    .line 529
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;

    .line 534
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->arrays:Ljava/util/Set;

    .line 539
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->attributeDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    .line 544
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    new-instance v1, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;

    const/4 v2, 0x1

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    .line 563
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    .line 564
    sget-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 565
    :cond_0
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .prologue
    .line 508
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method static synthetic access$1800(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .param p2, "x2"    # Lae/com/sun/xml/bind/v2/model/core/NonElementRef;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/Form;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .prologue
    .line 508
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

    return-object v0
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    .param p2, "x2"    # I

    .prologue
    .line 508
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->processForeignNamespaces(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V

    return-void
.end method

.method static synthetic access$2000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/TypeRef;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/TypeInfo;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/model/core/TypeRef;
    .param p2, "x2"    # Ljavax/xml/namespace/QName;
    .param p3, "x3"    # Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    .prologue
    .line 508
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->canBeDirectElementRef(Lae/com/sun/xml/bind/v2/model/core/TypeRef;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/TypeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .param p2, "x2"    # Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .prologue
    .line 508
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeKeyOrValue(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V

    return-void
.end method

.method static synthetic access$302(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Z)Z
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useSwaRef:Z

    return p1
.end method

.method static synthetic access$402(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Z)Z
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useMimeNs:Z

    return p1
.end method

.method static synthetic access$500(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/MultiMap;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .prologue
    .line 508
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    return-object v0
.end method

.method static synthetic access$600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .prologue
    .line 508
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .prologue
    .line 508
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->arrays:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/transform/Result;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .param p1, "x1"    # Ljavax/xml/transform/Result;
    .param p2, "x2"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTo(Ljavax/xml/transform/Result;Ljava/util/Map;)V

    return-void
.end method

.method private addDependencyTo(Ljavax/xml/namespace/QName;)V
    .locals 3
    .param p1, "qname"    # Ljavax/xml/namespace/QName;
        .annotation build Lcom/sun/istack/Nullable;
        .end annotation
    .end param

    .prologue
    .line 597
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    if-nez p1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "nsUri":Ljava/lang/String;
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->selfReference:Z

    goto :goto_0

    .line 614
    :cond_2
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->depends:Ljava/util/Set;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    invoke-static {v2, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private buildPropertyContentModel(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;)",
            "Lae/com/sun/xml/bind/v2/schemagen/Tree;"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v1

    invoke-virtual {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1036
    sget-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1023
    :pswitch_0
    check-cast p1, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    .end local p1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleElementProp(Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v0

    .line 1030
    :goto_0
    return-object v0

    .line 1026
    .restart local p1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1028
    :pswitch_2
    check-cast p1, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;

    .end local p1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleReferenceProp(Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v0

    goto :goto_0

    .line 1030
    .restart local p1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :pswitch_3
    check-cast p1, Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;

    .end local p1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleMapProp(Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v0

    goto :goto_0

    .line 1033
    .restart local p1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :pswitch_4
    sget-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1034
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1037
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1021
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private canBeDirectElementRef(Lae/com/sun/xml/bind/v2/model/core/TypeRef;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/TypeInfo;)Z
    .locals 8
    .param p2, "tn"    # Ljavax/xml/namespace/QName;
    .param p3, "parentInfo"    # Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
            "<TT;TC;>;",
            "Ljavax/xml/namespace/QName;",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "t":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1159
    const/4 v3, 0x0

    .line 1160
    .local v3, "te":Lae/com/sun/xml/bind/v2/model/core/Element;
    const/4 v0, 0x0

    .line 1161
    .local v0, "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    const/4 v2, 0x0

    .line 1163
    .local v2, "targetTagName":Ljavax/xml/namespace/QName;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->isNillable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 1193
    .end local p3    # "parentInfo":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    :cond_1
    :goto_0
    return v4

    .line 1168
    .restart local p3    # "parentInfo":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    :cond_2
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v6

    instance-of v6, v6, Lae/com/sun/xml/bind/v2/model/core/Element;

    if-eqz v6, :cond_3

    .line 1169
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v3

    .end local v3    # "te":Lae/com/sun/xml/bind/v2/model/core/Element;
    check-cast v3, Lae/com/sun/xml/bind/v2/model/core/Element;

    .line 1170
    .restart local v3    # "te":Lae/com/sun/xml/bind/v2/model/core/Element;
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/Element;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 1171
    instance-of v6, v3, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v6, :cond_3

    move-object v0, v3

    .line 1172
    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .line 1176
    :cond_3
    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, "nsUri":Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    instance-of v6, p3, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v6, :cond_1

    check-cast p3, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .end local p3    # "parentInfo":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;
    invoke-interface {p3}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1182
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/Element;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1183
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1189
    :cond_5
    if-eqz v3, :cond_7

    .line 1190
    if-eqz v2, :cond_6

    invoke-virtual {v2, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    move v4, v5

    .line 1193
    goto :goto_0
.end method

.method private containsValueProp(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "c":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 1012
    .local v1, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    instance-of v2, v1, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1014
    .end local v1    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleAttributeProp(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;)V
    .locals 4
    .param p2, "attr"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo",
            "<TT;TC;>;",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "ap":Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;->attribute()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;

    move-result-object v1

    .line 1228
    .local v1, "localAttribute":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "attrURI":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1230
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;

    .line 1232
    invoke-direct {p0, p1, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeAttributeTypeRef(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;)V

    .line 1234
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->attributeFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lae/com/sun/xml/bind/v2/schemagen/Form;->writeForm(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;Ljavax/xml/namespace/QName;)V

    .line 1239
    :goto_0
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1241
    const-string v2, "required"

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;->use(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;

    .line 1243
    :cond_0
    return-void

    .line 1236
    :cond_1
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;->ref(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalAttribute;

    goto :goto_0
.end method

.method private handleElementProp(Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo",
            "<TT;TC;>;)",
            "Lae/com/sun/xml/bind/v2/schemagen/Tree;"
        }
    .end annotation

    .prologue
    .line 1051
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "ep":Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->isValueList()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1052
    new-instance v1, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;

    invoke-direct {v1, p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$1;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;)V

    .line 1148
    :cond_0
    :goto_0
    return-object v1

    .line 1067
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    .line 1069
    .local v4, "t":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    new-instance v5, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;

    invoke-direct {v5, p0, v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$2;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/TypeRef;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1117
    .end local v4    # "t":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    :cond_2
    sget-object v5, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->CHOICE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    invoke-static {v5, v0}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeGroup(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;Ljava/util/List;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v6

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->isRequired()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeOptional(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v5

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->isCollection()Z

    move-result v6

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeRepeated(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v1

    .line 1122
    .local v1, "choice":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 1123
    .local v2, "ename":Ljavax/xml/namespace/QName;
    if-eqz v2, :cond_0

    .line 1124
    new-instance v5, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;

    invoke-direct {v5, p0, v2, p1, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$3;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/Tree;)V

    move-object v1, v5

    goto :goto_0

    .line 1117
    .end local v1    # "choice":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .end local v2    # "ename":Ljavax/xml/namespace/QName;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private handleMapProp(Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo",
            "<TT;TC;>;)",
            "Lae/com/sun/xml/bind/v2/schemagen/Tree;"
        }
    .end annotation

    .prologue
    .line 1348
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "mp":Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo<TT;TC;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$7;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/MapPropertyInfo;)V

    return-object v0
.end method

.method private handleReferenceProp(Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo",
            "<TT;TC;>;)",
            "Lae/com/sun/xml/bind/v2/schemagen/Tree;"
        }
    .end annotation

    .prologue
    .line 1261
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "rp":Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo<TT;TC;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->getElements()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/Element;

    .line 1264
    .local v2, "e":Lae/com/sun/xml/bind/v2/model/core/Element;, "Lae/com/sun/xml/bind/v2/model/core/Element<TT;TC;>;"
    new-instance v6, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;

    invoke-direct {v6, p0, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$4;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/Element;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1305
    .end local v2    # "e":Lae/com/sun/xml/bind/v2/model/core/Element;, "Lae/com/sun/xml/bind/v2/model/core/Element<TT;TC;>;"
    :cond_0
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->getWildcard()Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    move-result-object v5

    .line 1306
    .local v5, "wc":Lae/com/sun/xml/bind/v2/model/core/WildcardMode;
    if-eqz v5, :cond_1

    .line 1307
    new-instance v6, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;

    invoke-direct {v6, p0, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$5;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    :cond_1
    sget-object v6, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->CHOICE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    invoke-static {v6, v0}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeGroup(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;Ljava/util/List;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v6

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->isCollection()Z

    move-result v7

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeRepeated(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v7

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->isRequired()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeOptional(Z)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v1

    .line 1321
    .local v1, "choice":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v3

    .line 1323
    .local v3, "ename":Ljavax/xml/namespace/QName;
    if-eqz v3, :cond_2

    .line 1324
    new-instance v6, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;

    invoke-direct {v6, p0, v3, p1, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$6;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/Tree;)V

    move-object v1, v6

    .line 1337
    .end local v1    # "choice":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_2
    return-object v1

    .line 1319
    .end local v3    # "ename":Ljavax/xml/namespace/QName;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private processForeignNamespaces(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V
    .locals 6
    .param p2, "processingDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;I)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->ref()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/core/TypeInfo;

    .line 578
    .local v4, "t":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<TT;TC;>;"
    instance-of v5, v4, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v5, :cond_1

    if-lez p2, :cond_1

    move-object v5, v4

    .line 579
    check-cast v5, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v2

    .line 580
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 581
    .local v3, "subp":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, v3, p2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->processForeignNamespaces(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V

    goto :goto_1

    .line 584
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;>;"
    .end local v3    # "subp":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;
    :cond_1
    instance-of v5, v4, Lae/com/sun/xml/bind/v2/model/core/Element;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 585
    check-cast v5, Lae/com/sun/xml/bind/v2/model/core/Element;

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/Element;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {p0, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V

    .line 587
    :cond_2
    instance-of v5, v4, Lae/com/sun/xml/bind/v2/model/core/NonElement;

    if-eqz v5, :cond_0

    .line 588
    check-cast v4, Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .end local v4    # "t":Lae/com/sun/xml/bind/v2/model/core/TypeInfo;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfo<TT;TC;>;"
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {p0, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V

    goto :goto_0

    .line 591
    :cond_3
    return-void
.end method

.method private writeArray(Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V
    .locals 4
    .param p2, "schema"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo",
            "<TT;TC;>;",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;",
            ")V"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "a":Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;, "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo<TT;TC;>;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v2

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v0

    .line 842
    .local v0, "ct":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    const-string v2, "#all"

    invoke-interface {v0, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->_final(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    .line 843
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->sequence()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;

    move-result-object v2

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v2

    const-string v3, "item"

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v1

    .line 844
    .local v1, "le":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;->getItemType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->type(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 845
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->minOccurs(I)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    move-result-object v2

    const-string v3, "unbounded"

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;->maxOccurs(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    .line 846
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->nillable(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Element;

    .line 847
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->commit()V

    .line 848
    return-void
.end method

.method private writeAttributeTypeRef(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;)V
    .locals 2
    .param p2, "a"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo",
            "<TT;TC;>;",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1246
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "ap":Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->isCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;->simpleType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;

    move-result-object v0

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;->list()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/List;

    move-result-object v0

    const-string v1, "itemType"

    invoke-direct {p0, v0, p1, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V

    .line 1250
    :goto_0
    return-void

    .line 1249
    :cond_0
    const-string v0, "type"

    invoke-direct {p0, p2, p1, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeClass(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;)V
    .locals 21
    .param p2, "parent"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;",
            ")V"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "c":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-direct/range {p0 .. p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->containsValueProp(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 875
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 881
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;

    .line 882
    .local v17, "vp":Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo<TT;TC;>;"
    check-cast p2, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;

    .end local p2    # "parent":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;->simpleType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;

    move-result-object v13

    .line 883
    .local v13, "st":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;Lcom/sun/xml/txw2/TypedXmlWriter;)V

    .line 884
    invoke-interface/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;->isCollection()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 885
    invoke-interface {v13}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;->list()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/List;

    move-result-object v18

    invoke-interface/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v19

    const-string v20, "itemType"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    .line 999
    .end local v13    # "st":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;
    .end local v17    # "vp":Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo<TT;TC;>;"
    :goto_0
    return-void

    .line 887
    .restart local v13    # "st":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;
    .restart local v17    # "vp":Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo<TT;TC;>;"
    :cond_0
    invoke-interface {v13}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;->restriction()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleRestriction;

    move-result-object v18

    invoke-interface/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v19

    const-string v20, "base"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    .end local v13    # "st":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;
    .end local v17    # "vp":Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo<TT;TC;>;"
    .restart local p2    # "parent":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    :cond_1
    check-cast p2, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeHost;

    .end local p2    # "parent":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeHost;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v9

    .line 904
    .local v9, "ct":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;Lcom/sun/xml/txw2/TypedXmlWriter;)V

    .line 905
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isFinal()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 906
    const-string v18, "extension restriction"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->_final(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    .line 908
    :cond_2
    invoke-interface {v9}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->simpleContent()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleContent;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleContent;->extension()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;

    move-result-object v12

    .line 909
    .local v12, "se":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;
    invoke-interface {v12}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;->block()V

    .line 910
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 911
    .local v11, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    sget-object v18, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$PropertyKind:[I

    invoke-interface {v11}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 923
    sget-boolean v18, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->$assertionsDisabled:Z

    if-nez v18, :cond_3

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 913
    :pswitch_0
    check-cast v11, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;

    .end local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleAttributeProp(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;)V

    goto :goto_1

    .line 916
    .restart local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :pswitch_1
    const-string v18, "what if vp.isCollection() == true?"

    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/TODO;->checkSpec(Ljava/lang/String;)V

    move-object/from16 v16, v11

    .line 917
    check-cast v16, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;

    .line 918
    .local v16, "vp":Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;->base(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExtensionType;

    goto :goto_1

    .line 924
    .end local v16    # "vp":Lae/com/sun/xml/bind/v2/model/core/ValuePropertyInfo;
    :cond_3
    new-instance v18, Ljava/lang/IllegalStateException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalStateException;-><init>()V

    throw v18

    .line 927
    .end local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :cond_4
    invoke-interface {v12}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;->commit()V

    .line 929
    const-string v18, "figure out what to do if bc != null"

    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/TODO;->schemaGenerator(Ljava/lang/String;)V

    .line 930
    const-string v18, "handle sec 8.9.5.2, bullet #4"

    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/TODO;->checkSpec(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 940
    .end local v9    # "ct":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "se":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;
    .restart local p2    # "parent":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    :cond_5
    check-cast p2, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeHost;

    .end local p2    # "parent":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    invoke-interface/range {p2 .. p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeHost;->complexType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    move-result-object v9

    .line 941
    .restart local v9    # "ct":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;Lcom/sun/xml/txw2/TypedXmlWriter;)V

    .line 942
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isFinal()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 943
    const-string v18, "extension restriction"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->_final(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    .line 944
    :cond_6
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isAbstract()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 945
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->_abstract(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;

    .line 948
    :cond_7
    move-object v7, v9

    .line 949
    .local v7, "contentModel":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;
    move-object v8, v9

    .line 952
    .local v8, "contentModelOwner":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getBaseClass()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v4

    .line 953
    .local v4, "bc":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    if-eqz v4, :cond_8

    .line 954
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->hasValueProperty()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 956
    invoke-interface {v9}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->simpleContent()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleContent;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleContent;->extension()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;

    move-result-object v12

    .line 957
    .restart local v12    # "se":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;
    move-object v7, v12

    .line 958
    const/4 v8, 0x0

    .line 959
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;->base(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExtensionType;

    .line 970
    .end local v12    # "se":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleExtension;
    :cond_8
    :goto_2
    if-eqz v8, :cond_d

    .line 972
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v6, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 975
    .restart local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    instance-of v0, v11, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v11

    check-cast v18, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;

    invoke-interface/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/model/core/ReferencePropertyInfo;->isMixed()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 976
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v9, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->mixed(Z)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexTypeModel;

    .line 978
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->buildPropertyContentModel(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v14

    .line 979
    .local v14, "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    if-eqz v14, :cond_9

    .line 980
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 961
    .end local v6    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    .end local v14    # "t":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_b
    invoke-interface {v9}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->complexContent()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexContent;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexContent;->extension()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexExtension;

    move-result-object v5

    .line 962
    .local v5, "ce":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexExtension;
    move-object v7, v5

    .line 963
    move-object v8, v5

    .line 965
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexExtension;->base(Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExtensionType;

    goto :goto_2

    .line 983
    .end local v5    # "ce":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexExtension;
    .restart local v6    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isOrdered()Z

    move-result v18

    if-eqz v18, :cond_f

    sget-object v18, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->SEQUENCE:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    :goto_4
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->makeGroup(Lae/com/sun/xml/bind/v2/schemagen/GroupKind;Ljava/util/List;)Lae/com/sun/xml/bind/v2/schemagen/Tree;

    move-result-object v15

    .line 986
    .local v15, "top":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    invoke-virtual {v15, v8}, Lae/com/sun/xml/bind/v2/schemagen/Tree;->write(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeDefParticle;)V

    .line 990
    .end local v6    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "top":Lae/com/sun/xml/bind/v2/schemagen/Tree;
    :cond_d
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 991
    .restart local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    instance-of v0, v11, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 992
    check-cast v11, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;

    .end local v11    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->handleAttributeProp(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;)V

    goto :goto_5

    .line 983
    .restart local v6    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    :cond_f
    sget-object v18, Lae/com/sun/xml/bind/v2/schemagen/GroupKind;->ALL:Lae/com/sun/xml/bind/v2/schemagen/GroupKind;

    goto :goto_4

    .line 995
    .end local v6    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/com/sun/xml/bind/v2/schemagen/Tree;>;"
    :cond_10
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->hasAttributeWildcard()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 996
    invoke-interface {v7}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttrDecls;->anyAttribute()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;

    move-result-object v18

    const-string v19, "##other"

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;->namespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;

    move-result-object v18

    const-string v19, "skip"

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;->processContents(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Wildcard;

    .line 998
    :cond_11
    invoke-interface {v9}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ComplexType;->commit()V

    goto/16 :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeEnum(Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;)V
    .locals 6
    .param p2, "th"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo",
            "<TT;TC;>;",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;",
            ")V"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "e":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;->simpleType()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;

    move-result-object v3

    .line 855
    .local v3, "st":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;
    invoke-direct {p0, p1, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;Lcom/sun/xml/txw2/TypedXmlWriter;)V

    .line 857
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;->restriction()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleRestriction;

    move-result-object v0

    .line 858
    .local v0, "base":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleRestrictionModel;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getBaseType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v4

    const-string v5, "base"

    invoke-direct {p0, v0, v4, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    .line 860
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getConstants()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/EnumConstant;

    .line 861
    .local v1, "c":Lae/com/sun/xml/bind/v2/model/core/EnumConstant;
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleRestrictionModel;->enumeration()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/NoFixedFacet;

    move-result-object v4

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/EnumConstant;->getLexicalValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/NoFixedFacet;->value(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/NoFixedFacet;

    goto :goto_0

    .line 863
    .end local v1    # "c":Lae/com/sun/xml/bind/v2/model/core/EnumConstant;
    :cond_0
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleType;->commit()V

    .line 864
    return-void
.end method

.method private writeKeyOrValue(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/NonElement;)V
    .locals 2
    .param p1, "seq"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 1374
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p3, "typeRef":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/ExplicitGroup;->element()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v1

    invoke-interface {v1, p2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;

    move-result-object v0

    .line 1375
    .local v0, "key":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/LocalElement;->minOccurs(I)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Occurs;

    .line 1376
    const-string v1, "type"

    invoke-direct {p0, v0, p3, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    .line 1377
    return-void
.end method

.method private writeName(Lae/com/sun/xml/bind/v2/model/core/NonElement;Lcom/sun/xml/txw2/TypedXmlWriter;)V
    .locals 3
    .param p2, "xw"    # Lcom/sun/xml/txw2/TypedXmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "c":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 1006
    .local v0, "tn":Ljavax/xml/namespace/QName;
    if-eqz v0, :cond_0

    .line 1007
    const-string v1, "name"

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/sun/xml/txw2/TypedXmlWriter;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1008
    :cond_0
    return-void
.end method

.method private writeTo(Ljavax/xml/transform/Result;Ljava/util/Map;)V
    .locals 21
    .param p1, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/transform/Result;",
            "Ljava/util/Map",
            "<",
            "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator",
            "<TT;TC;TF;TM;>.Namespace;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p2, "systemIds":Ljava/util/Map;, "Ljava/util/Map<Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;Ljava/lang/String;>;"
    :try_start_0
    const-class v18, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;

    invoke-static/range {p1 .. p1}, Lcom/sun/xml/txw2/output/ResultFactory;->createSerializer(Ljavax/xml/transform/Result;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sun/xml/txw2/TXW;->create(Ljava/lang/Class;Lcom/sun/xml/txw2/output/XmlSerializer;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v16

    check-cast v16, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;

    .line 628
    .local v16, "schema":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    move-object/from16 v18, v0

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getXmlNs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    .line 630
    .local v17, "xmlNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 631
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_namespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/xml/txw2/TxwException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "schema":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .end local v17    # "xmlNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 731
    .local v6, "e":Lcom/sun/xml/txw2/TxwException;
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1400()Ljava/util/logging/Logger;

    move-result-object v18

    sget-object v19, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v6}, Lcom/sun/xml/txw2/TxwException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 732
    new-instance v18, Ljava/io/IOException;

    invoke-virtual {v6}, Lcom/sun/xml/txw2/TxwException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 634
    .end local v6    # "e":Lcom/sun/xml/txw2/TxwException;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "schema":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;
    .restart local v17    # "xmlNs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useSwaRef:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 635
    const-string v18, "http://ws-i.org/profiles/basic/1.1/xsd"

    const-string v19, "swaRef"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_namespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useMimeNs:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 638
    const-string v18, "http://www.w3.org/2005/05/xmlmime"

    const-string v19, "xmime"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_namespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    move-object/from16 v18, v0

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getAttributeFormDefault(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/Form;->get(Lae/javax/xml/bind/annotation/XmlNsForm;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->attributeFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->attributeFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-object/from16 v18, v0

    const-string v19, "attributeFormDefault"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/Form;->declare(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    move-object/from16 v18, v0

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getElementFormDefault(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/Form;->get(Lae/javax/xml/bind/annotation/XmlNsForm;)Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementFormDefault:Lae/com/sun/xml/bind/v2/schemagen/Form;

    move-object/from16 v18, v0

    const-string v19, "elementFormDefault"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/Form;->declare(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V

    .line 650
    const-string v18, "http://www.w3.org/2001/XMLSchema"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "xs"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 652
    const-string v18, "http://www.w3.org/2001/XMLSchema"

    const-string v19, "xs"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_namespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_3
    const-string v18, "1.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->version(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_4

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->targetNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;

    .line 660
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->depends:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .line 661
    .local v14, "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    iget-object v0, v14, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_namespace(Ljava/lang/String;)V

    goto :goto_1

    .line 664
    .end local v14    # "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->selfReference:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_6

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "tns"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_namespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_6
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->depends:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .line 674
    .local v13, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_import()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    move-result-object v12

    .line 675
    .local v12, "imp":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;
    iget-object v0, v13, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_7

    .line 676
    iget-object v0, v13, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;->namespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    .line 677
    :cond_7
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 678
    .local v15, "refSystemId":Ljava/lang/String;
    if-eqz v15, :cond_8

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 680
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;->schemaLocation(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    .line 682
    :cond_8
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    goto :goto_2

    .line 684
    .end local v12    # "imp":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;
    .end local v13    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .end local v15    # "refSystemId":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useSwaRef:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 685
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_import()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    move-result-object v18

    const-string v19, "http://ws-i.org/profiles/basic/1.1/xsd"

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;->namespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    move-result-object v18

    const-string v19, "http://ws-i.org/profiles/basic/1.1/swaref.xsd"

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;->schemaLocation(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    .line 687
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useMimeNs:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 688
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_import()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    move-result-object v18

    const-string v19, "http://www.w3.org/2005/05/xmlmime"

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;->namespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    move-result-object v18

    const-string v19, "http://www.w3.org/2005/05/xmlmime"

    invoke-interface/range {v18 .. v19}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;->schemaLocation(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Import;

    .line 692
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 693
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementDeclaration;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;->writeTo(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V

    .line 694
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    goto :goto_3

    .line 696
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementDeclaration;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .line 697
    .local v5, "c":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 702
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeClass(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;)V

    .line 703
    :cond_e
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    goto :goto_4

    .line 705
    .end local v5    # "c":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;

    .line 706
    .local v7, "e":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    invoke-interface {v7}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface {v7}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeEnum(Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;)V

    .line 712
    :cond_11
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    goto :goto_5

    .line 714
    .end local v7    # "e":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->arrays:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;

    .line 715
    .local v4, "a":Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;, "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo<TT;TC;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeArray(Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V

    .line 716
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    goto :goto_6

    .line 718
    .end local v4    # "a":Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;, "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo<TT;TC;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->attributeDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 719
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;>;"
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->attribute()Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;

    move-result-object v3

    .line 720
    .local v3, "a":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;->name(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;

    .line 721
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_14

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    move-object/from16 v18, v0

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->stringType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    invoke-static/range {v18 .. v18}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1300(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v18

    const-string v19, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    .line 725
    :goto_8
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->_pcdata(Ljava/lang/Object;)V

    goto :goto_7

    .line 724
    :cond_14
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeAttributeTypeRef(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/AttributeType;)V

    goto :goto_8

    .line 729
    .end local v3    # "a":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TopLevelAttribute;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;>;"
    :cond_15
    invoke-interface/range {v16 .. v16}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;->commit()V
    :try_end_1
    .catch Lcom/sun/xml/txw2/TxwException; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    return-void
.end method

.method private writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V
    .locals 9
    .param p1, "th"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .param p3, "refAttName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p2, "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    const/4 v0, 0x0

    .line 799
    .local v0, "e":Lae/com/sun/xml/bind/v2/model/core/Element;
    instance-of v3, p2, Lae/com/sun/xml/bind/v2/model/core/MaybeElement;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 800
    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/MaybeElement;

    .line 801
    .local v2, "me":Lae/com/sun/xml/bind/v2/model/core/MaybeElement;
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/MaybeElement;->isElement()Z

    move-result v1

    .line 802
    .local v1, "isElement":Z
    if-eqz v1, :cond_0

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/MaybeElement;->asElement()Lae/com/sun/xml/bind/v2/model/core/Element;

    move-result-object v0

    .line 804
    .end local v1    # "isElement":Z
    .end local v2    # "me":Lae/com/sun/xml/bind/v2/model/core/MaybeElement;
    :cond_0
    instance-of v3, p2, Lae/com/sun/xml/bind/v2/model/core/Element;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 805
    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/Element;

    .line 807
    :cond_1
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v3

    if-nez v3, :cond_6

    .line 808
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/Element;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 809
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->block()V

    .line 810
    instance-of v3, p2, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v3, :cond_2

    .line 811
    check-cast p2, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .end local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    invoke-direct {p0, p2, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeClass(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;)V

    .line 835
    .end local p1    # "th":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    :goto_0
    return-void

    .line 813
    .restart local p1    # "th":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .restart local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_2
    check-cast p2, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;

    .end local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;

    .end local p1    # "th":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    invoke-direct {p0, p2, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeEnum(Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;)V

    goto :goto_0

    .line 817
    .restart local p1    # "th":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .restart local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_3
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->block()V

    .line 818
    instance-of v3, p2, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    if-eqz v3, :cond_5

    .line 819
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    invoke-virtual {v4, v3}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->push(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 820
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->errorListener:Lae/com/sun/xml/bind/api/ErrorListener;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1700(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/api/ErrorListener;

    move-result-object v3

    new-instance v4, Lorg/xml/sax/SAXParseException;

    sget-object v5, Lae/com/sun/xml/bind/v2/schemagen/Messages;->ANONYMOUS_TYPE_CYCLE:Lae/com/sun/xml/bind/v2/schemagen/Messages;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    invoke-static {v8}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    move-result-object v8

    invoke-virtual {v8}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->getCycleString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/schemagen/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/api/ErrorListener;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 827
    .end local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :goto_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    invoke-static {v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    move-result-object v3

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 825
    .restart local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_4
    check-cast p2, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .end local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    invoke-direct {p0, p2, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeClass(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;)V

    goto :goto_1

    .line 829
    .restart local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_5
    check-cast p2, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;

    .end local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;

    .end local p1    # "th":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    invoke-direct {p0, p2, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeEnum(Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/SimpleTypeHost;)V

    goto :goto_0

    .line 833
    .restart local p1    # "th":Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .restart local p2    # "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    :cond_6
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-interface {p1, p3, v3}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;Ljava/lang/String;)V
    .locals 5
    .param p1, "th"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;
    .param p3, "refAttName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;",
            "Lae/com/sun/xml/bind/v2/model/core/NonElementRef",
            "<TT;TC;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p2, "typeRef":Lae/com/sun/xml/bind/v2/model/core/NonElementRef;, "Lae/com/sun/xml/bind/v2/model/core/NonElementRef<TT;TC;>;"
    sget-object v1, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$ID:[I

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v2

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v2

    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/model/core/ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 751
    :pswitch_0
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    const-string v3, "ID"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    :goto_0
    return-void

    .line 754
    :pswitch_1
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    const-string v3, "IDREF"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 764
    :pswitch_2
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v1

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->getExpectedMimeType()Ljavax/activation/MimeType;

    move-result-object v0

    .line 765
    .local v0, "mimeType":Ljavax/activation/MimeType;
    if-eqz v0, :cond_0

    .line 766
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://www.w3.org/2005/05/xmlmime"

    const-string v3, "expectedContentTypes"

    const-string v4, "xmime"

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/activation/MimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->_attribute(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V

    .line 770
    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->this$0:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->generateSwaRefAdapter(Lae/com/sun/xml/bind/v2/model/core/NonElementRef;)Z
    invoke-static {v1, p2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->access$1500(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://ws-i.org/profiles/basic/1.1/xsd"

    const-string v3, "swaRef"

    const-string v4, "ref"

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 776
    :cond_1
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v1

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->getSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 777
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v1

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->getSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {p1, p3, v1}, Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;->_attribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/NonElementRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTypeRef(Lae/com/sun/xml/bind/v2/schemagen/xmlschema/TypeHost;Lae/com/sun/xml/bind/v2/model/core/NonElement;Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addGlobalAttribute(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 1380
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "ap":Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->attributeDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V

    .line 1382
    return-void
.end method

.method public addGlobalElement(Lae/com/sun/xml/bind/v2/model/core/TypeRef;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/TypeRef",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 1385
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .local p1, "tref":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;

    const/4 v3, 0x0

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    invoke-virtual {v0, v1, v2}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTarget()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V

    .line 1387
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1391
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "[classes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1393
    const-string v1, ",elementDecls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1394
    const-string v1, ",enums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1395
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
