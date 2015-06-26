.class public final Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;
.super Ljava/lang/Object;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;,
        Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
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
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NAMESPACE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field private static final newline:Ljava/lang/String; = "\n"


# instance fields
.field private final anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/util/CollisionCheckStack",
            "<",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;>;"
        }
    .end annotation
.end field

.field private errorListener:Lae/com/sun/xml/bind/api/ErrorListener;

.field private final namespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator",
            "<TT;TC;TF;TM;>.Namespace;>;"
        }
    .end annotation
.end field

.field private navigator:Lae/com/sun/xml/bind/v2/model/nav/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field private final stringType:Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private final types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-class v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->$assertionsDisabled:Z

    .line 150
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->logger:Ljava/util/logging/Logger;

    .line 1605
    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->NAMESPACE_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/nav/Navigator;Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "navigator":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;TF;TM;>;"
    .local p2, "types":Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;, "Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet<TT;TC;TF;TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v5, Ljava/util/TreeMap;

    sget-object v6, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->NAMESPACE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v5, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    .line 186
    new-instance v5, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    invoke-direct {v5}, Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;-><init>()V

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    .line 189
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->navigator:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    .line 190
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    .line 192
    const-class v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getTypeInfo(Ljava/lang/Object;)Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v5

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->stringType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 193
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getAnyTypeInfo()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v5

    iput-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    .line 196
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->beans()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .line 197
    .local v1, "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-virtual {p0, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;)V

    goto :goto_0

    .line 198
    .end local v1    # "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getElementMappings(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;

    .line 199
    .local v3, "ei1":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    invoke-virtual {p0, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Lae/com/sun/xml/bind/v2/model/core/ElementInfo;)V

    goto :goto_1

    .line 200
    .end local v3    # "ei1":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    :cond_1
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->enums()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;

    .line 201
    .local v2, "ei":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;)V

    goto :goto_2

    .line 202
    .end local v2    # "ei":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    :cond_2
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->arrays()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;

    .line 203
    .local v0, "a":Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;, "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo<TT;TC;>;"
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;)V

    goto :goto_3

    .line 204
    .end local v0    # "a":Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;, "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo<TT;TC;>;"
    :cond_3
    return-void
.end method

.method static synthetic access$1000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    .prologue
    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    .prologue
    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    return-object v0
.end method

.method static synthetic access$1300(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    .prologue
    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->stringType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1500(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;Lae/com/sun/xml/bind/v2/model/core/NonElementRef;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/model/core/NonElementRef;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->generateSwaRefAdapter(Lae/com/sun/xml/bind/v2/model/core/NonElementRef;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    .prologue
    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->collisionChecker:Lae/com/sun/xml/bind/v2/util/CollisionCheckStack;

    return-object v0
.end method

.method static synthetic access$1700(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/api/ErrorListener;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    .prologue
    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->errorListener:Lae/com/sun/xml/bind/api/ErrorListener;

    return-object v0
.end method

.method static synthetic access$2200(Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .prologue
    .line 148
    invoke-static {p0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getProcessContentsModeName(Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;)Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;

    .prologue
    .line 148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->anyType:Lae/com/sun/xml/bind/v2/model/core/NonElement;

    return-object v0
.end method

.method private static calculateRelativePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "fileUrl"    # Z

    .prologue
    .line 1585
    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1587
    .local v0, "onWindows":Z
    :goto_0
    if-nez p1, :cond_1

    .line 1588
    const/4 v1, 0x0

    .line 1593
    :goto_1
    return-object v1

    .line 1585
    .end local v0    # "onWindows":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1590
    .restart local v0    # "onWindows":Z
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1591
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1593
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lae/com/sun/xml/bind/v2/schemagen/Util;->getParentUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->calculateRelativePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static fixNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1578
    if-nez p0, :cond_0

    const-string p0, ""

    .line 1579
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private generateSwaRefAdapter(Lae/com/sun/xml/bind/v2/model/core/NonElementRef;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/NonElementRef",
            "<TT;TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 1472
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "typeRef":Lae/com/sun/xml/bind/v2/model/core/NonElementRef;, "Lae/com/sun/xml/bind/v2/model/core/NonElementRef<TT;TC;>;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/NonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->generateSwaRefAdapter(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;)Z

    move-result v0

    return v0
.end method

.method private generateSwaRefAdapter(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo",
            "<TT;TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "prop":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    const/4 v2, 0x0

    .line 1479
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v0

    .line 1480
    .local v0, "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    if-nez v0, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return v2

    .line 1481
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->navigator:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-class v4, Lae/com/sun/xml/bind/v2/runtime/SwaRefAdapter;

    invoke-interface {v3, v4}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1482
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1483
    iget-object v2, v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->adapterType:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator",
            "<TT;TC;TF;TM;>.Namespace;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .line 208
    .local v0, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    new-instance v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .end local v0    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;Ljava/lang/String;)V

    .restart local v0    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    return-object v0
.end method

.method private static getProcessContentsModeName(Lae/com/sun/xml/bind/v2/model/core/WildcardMode;)Ljava/lang/String;
    .locals 2
    .param p0, "wc"    # Lae/com/sun/xml/bind/v2/model/core/WildcardMode;

    .prologue
    .line 1505
    sget-object v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$2;->$SwitchMap$ae$com$sun$xml$bind$v2$model$core$WildcardMode:[I

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1512
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1508
    :pswitch_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/core/WildcardMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1510
    :goto_0
    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 1535
    :try_start_0
    sget-boolean v7, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :catch_0
    move-exception v1

    .line 1573
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/InternalError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error escaping one of these uris:\n\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1537
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_0
    if-nez p1, :cond_2

    .line 1571
    .end local p0    # "uri":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 1539
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/net/URI;

    invoke-static {p0}, Lae/com/sun/xml/bind/v2/schemagen/Util;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v5, "theUri":Ljava/net/URI;
    new-instance v4, Ljava/net/URI;

    invoke-static {p1}, Lae/com/sun/xml/bind/v2/schemagen/Util;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v4, "theBaseUri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->isOpaque()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/net/URI;->isOpaque()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1545
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lae/com/sun/xml/bind/v2/schemagen/Util;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lae/com/sun/xml/bind/v2/schemagen/Util;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1549
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1550
    .local v6, "uriPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "basePath":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1554
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/schemagen/Util;->normalizeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1558
    const-string p0, "."

    goto :goto_0

    .line 1560
    :cond_4
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->fixNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v0, v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->calculateRelativePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "relPath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    .local v3, "relUri":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1567
    const/16 v7, 0x3f

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_5
    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1569
    const/16 v7, 0x23

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1598
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "a":Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;, "Lae/com/sun/xml/bind/v2/model/core/ArrayInfo<TT;TC;>;"
    sget-boolean v2, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 359
    :cond_0
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "namespaceURI":Ljava/lang/String;
    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v0

    .line 361
    .local v0, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->arrays:Ljava/util/Set;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$700(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ArrayInfo;->getItemType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v2

    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v2

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v0, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    .line 365
    return-void
.end method

.method public add(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ClassInfo",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "clazz":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    sget-boolean v18, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 224
    :cond_0
    const/4 v14, 0x0

    .line 226
    .local v14, "nsUri":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->navigator:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object/from16 v19, v0

    const-class v20, Lae/com/sun/xml/bind/api/CompositeStructure;

    invoke-interface/range {v19 .. v20}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isElement()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 231
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    .line 232
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v13

    .line 233
    .local v13, "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;
    invoke-static {v13}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v13, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    .line 237
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Ljavax/xml/namespace/QName;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    .line 240
    .end local v13    # "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    :cond_3
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v16

    .line 241
    .local v16, "tn":Ljavax/xml/namespace/QName;
    if-eqz v16, :cond_8

    .line 242
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    .line 249
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v12

    .line 250
    .local v12, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;
    invoke-static {v12}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getProperties()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;

    .line 254
    .local v15, "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->processForeignNamespaces(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V
    invoke-static {v12, v15, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V

    .line 255
    instance-of v0, v15, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object v5, v15

    .line 256
    check-cast v5, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;

    .line 257
    .local v5, "ap":Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;"
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "aUri":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 260
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addGlobalAttribute(Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;)V

    .line 261
    invoke-interface {v5}, Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;->getXmlName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    .line 264
    .end local v4    # "aUri":Ljava/lang/String;
    .end local v5    # "ap":Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/AttributePropertyInfo<TT;TC;>;"
    :cond_6
    instance-of v0, v15, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object v8, v15

    .line 265
    check-cast v8, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    .line 266
    .local v8, "ep":Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo<TT;TC;>;"
    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lae/com/sun/xml/bind/v2/model/core/TypeRef;

    .line 267
    .local v17, "tref":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    invoke-interface/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "eUri":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7

    iget-object v0, v12, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addGlobalElement(Lae/com/sun/xml/bind/v2/model/core/TypeRef;)V

    .line 270
    invoke-interface/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/model/core/TypeRef;->getTagName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    goto :goto_2

    .line 245
    .end local v7    # "eUri":Ljava/lang/String;
    .end local v8    # "ep":Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo<TT;TC;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .end local v15    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    .end local v17    # "tref":Lae/com/sun/xml/bind/v2/model/core/TypeRef;, "Lae/com/sun/xml/bind/v2/model/core/TypeRef<TT;TC;>;"
    :cond_8
    if-nez v14, :cond_4

    goto/16 :goto_0

    .line 275
    .restart local v12    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .restart local v15    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->generateSwaRefAdapter(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 276
    const/16 v18, 0x1

    move/from16 v0, v18

    # setter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useSwaRef:Z
    invoke-static {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$302(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Z)Z

    .line 278
    :cond_a
    invoke-interface {v15}, Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;->getExpectedMimeType()Ljavax/activation/MimeType;

    move-result-object v11

    .line 279
    .local v11, "mimeType":Ljavax/activation/MimeType;
    if-eqz v11, :cond_5

    .line 280
    const/16 v18, 0x1

    move/from16 v0, v18

    # setter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->useMimeNs:Z
    invoke-static {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$402(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Z)Z

    goto/16 :goto_1

    .line 286
    .end local v11    # "mimeType":Ljavax/activation/MimeType;
    .end local v15    # "p":Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;, "Lae/com/sun/xml/bind/v2/model/core/PropertyInfo<TT;TC;>;"
    :cond_b
    invoke-interface/range {p1 .. p1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getBaseClass()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v6

    .line 287
    .local v6, "bc":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    if-eqz v6, :cond_1

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Lae/com/sun/xml/bind/v2/model/core/ClassInfo;)V

    .line 289
    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v18

    move-object/from16 v0, v18

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v12, v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    goto/16 :goto_0
.end method

.method public add(Lae/com/sun/xml/bind/v2/model/core/ElementInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/ElementInfo",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "elem":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;, "Lae/com/sun/xml/bind/v2/model/core/ElementInfo<TT;TC;>;"
    sget-boolean v5, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 299
    :cond_0
    const/4 v3, 0x0

    .line 301
    .local v3, "nillable":Z
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 302
    .local v2, "name":Ljavax/xml/namespace/QName;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v1

    .line 305
    .local v1, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 306
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v6

    invoke-interface {v6}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getClazz()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/core/ElementInfo;

    move-result-object v0

    .line 311
    .local v0, "ei":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    :goto_0
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getProperty()Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    move-result-object v5

    const-class v6, Lae/javax/xml/bind/annotation/XmlElement;

    invoke-interface {v5, v6}, Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lae/javax/xml/bind/annotation/XmlElement;

    .line 313
    .local v4, "xmlElem":Lae/javax/xml/bind/annotation/XmlElement;
    if-nez v4, :cond_2

    .line 314
    const/4 v3, 0x0

    .line 319
    :goto_1
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$500(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getContentType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v8

    invoke-direct {v7, v1, v3, v8}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    invoke-virtual {v5, v6, v7}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/ElementInfo;->getProperty()Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    move-result-object v5

    const/4 v6, 0x1

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->processForeignNamespaces(Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V
    invoke-static {v1, v5, v6}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$200(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Lae/com/sun/xml/bind/v2/model/core/PropertyInfo;I)V

    .line 323
    return-void

    .line 308
    .end local v0    # "ei":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    .end local v4    # "xmlElem":Lae/javax/xml/bind/annotation/XmlElement;
    :cond_1
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getElementInfo(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Lae/com/sun/xml/bind/v2/model/core/ElementInfo;

    move-result-object v0

    .restart local v0    # "ei":Lae/com/sun/xml/bind/v2/model/core/ElementInfo;
    goto :goto_0

    .line 316
    .restart local v4    # "xmlElem":Lae/javax/xml/bind/annotation/XmlElement;
    :cond_2
    invoke-interface {v4}, Lae/javax/xml/bind/annotation/XmlElement;->nillable()Z

    move-result v3

    goto :goto_1
.end method

.method public add(Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p1, "envm":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    sget-boolean v4, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 328
    :cond_0
    const/4 v2, 0x0

    .line 330
    .local v2, "nsUri":Ljava/lang/String;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->isElement()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v1

    .line 334
    .local v1, "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v4

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v1, v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    .line 338
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->add(Ljavax/xml/namespace/QName;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    .line 341
    .end local v1    # "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    :cond_1
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v3

    .line 342
    .local v3, "typeName":Ljavax/xml/namespace/QName;
    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_2
    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v0

    .line 350
    .local v0, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getBaseType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v4

    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v4

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v0, v4}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    .line 354
    .end local v0    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    :goto_0
    return-void

    .line 345
    :cond_3
    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public add(Ljavax/xml/namespace/QName;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V
    .locals 4
    .param p1, "tagName"    # Ljavax/xml/namespace/QName;
    .param p2, "isNillable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Z",
            "Lae/com/sun/xml/bind/v2/model/core/NonElement",
            "<TT;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    .local p3, "type":Lae/com/sun/xml/bind/v2/model/core/NonElement;, "Lae/com/sun/xml/bind/v2/model/core/NonElement<TT;TC;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getType()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->navigator:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    const-class v3, Lae/com/sun/xml/bind/api/CompositeStructure;

    invoke-interface {v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->getNamespace(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    move-result-object v0

    .line 383
    .local v0, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->elementDecls:Lae/com/sun/xml/bind/v2/schemagen/MultiMap;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$500(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Lae/com/sun/xml/bind/v2/schemagen/MultiMap;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, p2, p3}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementWithType;-><init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;ZLae/com/sun/xml/bind/v2/model/core/NonElement;)V

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/schemagen/MultiMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    if-eqz p3, :cond_0

    .line 387
    invoke-interface {p3}, Lae/com/sun/xml/bind/v2/model/core/NonElement;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v1

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->addDependencyTo(Ljavax/xml/namespace/QName;)V
    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$100(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/namespace/QName;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1491
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .line 1493
    .local v2, "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1494
    :cond_0
    iget-object v3, v2, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1496
    .end local v2    # "ns":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public write(Lae/javax/xml/bind/SchemaOutputResolver;Lae/com/sun/xml/bind/api/ErrorListener;)V
    .locals 18
    .param p1, "resolver"    # Lae/javax/xml/bind/SchemaOutputResolver;
    .param p2, "errorListener"    # Lae/com/sun/xml/bind/api/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    if-nez p1, :cond_0

    .line 452
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 454
    :cond_0
    sget-object v14, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 456
    sget-object v14, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Wrigin XML Schema for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lae/com/sun/xml/bind/v2/util/StackRecorder;

    invoke-direct/range {v17 .. v17}, Lae/com/sun/xml/bind/v2/util/StackRecorder;-><init>()V

    invoke-virtual/range {v14 .. v17}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_1
    new-instance v8, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lae/com/sun/xml/bind/v2/schemagen/FoolProofResolver;-><init>(Lae/javax/xml/bind/SchemaOutputResolver;)V

    .line 461
    .end local p1    # "resolver":Lae/javax/xml/bind/SchemaOutputResolver;
    .local v8, "resolver":Lae/javax/xml/bind/SchemaOutputResolver;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->errorListener:Lae/com/sun/xml/bind/api/ErrorListener;

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->types:Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;

    invoke-interface {v14}, Lae/com/sun/xml/bind/v2/model/core/TypeInfoSet;->getSchemaLocations()Ljava/util/Map;

    move-result-object v11

    .line 465
    .local v11, "schemaLocations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v5, "out":Ljava/util/Map;, "Ljava/util/Map<Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;Ljavax/xml/transform/Result;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v12, "systemIds":Ljava/util/Map;, "Ljava/util/Map<Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    const-string v15, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    .line 475
    .local v4, "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    iget-object v14, v4, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 476
    .local v10, "schemaLocation":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 477
    invoke-interface {v12, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 479
    :cond_3
    iget-object v14, v4, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->uri:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "schema"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".xsd"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lae/javax/xml/bind/SchemaOutputResolver;->createOutput(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;

    move-result-object v6

    .line 480
    .local v6, "output":Ljavax/xml/transform/Result;
    if-eqz v6, :cond_2

    .line 481
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-interface {v6}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 488
    .end local v4    # "n":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;"
    .end local v6    # "output":Ljavax/xml/transform/Result;
    .end local v10    # "schemaLocation":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 489
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;Ljavax/xml/transform/Result;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/xml/transform/Result;

    .line 490
    .local v9, "result":Ljavax/xml/transform/Result;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # invokes: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->writeTo(Ljavax/xml/transform/Result;Ljava/util/Map;)V
    invoke-static {v14, v9, v12}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$800(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;Ljavax/xml/transform/Result;Ljava/util/Map;)V

    .line 491
    instance-of v14, v9, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v14, :cond_5

    move-object v14, v9

    .line 492
    check-cast v14, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v14}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 493
    .local v7, "outputStream":Ljava/io/OutputStream;
    if-eqz v7, :cond_6

    .line 494
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 496
    :cond_6
    check-cast v9, Ljavax/xml/transform/stream/StreamResult;

    .end local v9    # "result":Ljavax/xml/transform/Result;
    invoke-virtual {v9}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v13

    .line 497
    .local v13, "writer":Ljava/io/Writer;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/io/Writer;->close()V

    goto :goto_1

    .line 501
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;Ljavax/xml/transform/Result;>;"
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v13    # "writer":Ljava/io/Writer;
    :cond_7
    return-void
.end method

.method public writeEpisodeFile(Lcom/sun/xml/txw2/output/XmlSerializer;)V
    .locals 14
    .param p1, "out"    # Lcom/sun/xml/txw2/output/XmlSerializer;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>;"
    const/16 v13, 0x7e

    .line 394
    const-class v10, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;

    invoke-static {v10, p1}, Lcom/sun/xml/txw2/TXW;->create(Ljava/lang/Class;Lcom/sun/xml/txw2/output/XmlSerializer;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v8

    check-cast v8, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;

    .line 396
    .local v8, "root":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    const-string v11, ""

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 397
    const-string v10, "http://java.sun.com/xml/ns/jaxb"

    const-string v11, "jaxb"

    invoke-interface {v8, v10, v11}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->_namespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    const-string v10, "2.1"

    invoke-interface {v8, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->version(Ljava/lang/String;)V

    .line 402
    iget-object v10, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->namespaces:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 403
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;>;"
    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->bindings()Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;

    move-result-object v4

    .line 406
    .local v4, "group":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 407
    .local v9, "tns":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 408
    const-string v10, "tns"

    invoke-interface {v4, v9, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->_namespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v7, "tns:"

    .line 414
    .local v7, "prefix":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x-schema::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, ""

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->scd(Ljava/lang/String;)V

    .line 415
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->schemaBindings()Lae/com/sun/xml/bind/v2/schemagen/episode/SchemaBindings;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/schemagen/episode/SchemaBindings;->map(Z)V

    .line 417
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->classes:Ljava/util/Set;
    invoke-static {v10}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$000(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    .line 418
    .local v1, "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 420
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 421
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->bindings()Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;

    move-result-object v0

    .line 422
    .local v0, "child":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->scd(Ljava/lang/String;)V

    .line 423
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->klass()Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;

    move-result-object v10

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;->ref(Ljava/lang/String;)V

    .line 426
    .end local v0    # "child":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    :cond_2
    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->isElement()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 427
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->bindings()Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;

    move-result-object v0

    .line 428
    .restart local v0    # "child":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getElementName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->scd(Ljava/lang/String;)V

    .line 429
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->klass()Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;

    move-result-object v10

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/core/ClassInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;->ref(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 411
    .end local v0    # "child":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    .end local v1    # "ci":Lae/com/sun/xml/bind/v2/model/core/ClassInfo;, "Lae/com/sun/xml/bind/v2/model/core/ClassInfo<TT;TC;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_3
    const-string v7, ""

    .restart local v7    # "prefix":Ljava/lang/String;
    goto/16 :goto_1

    .line 414
    :cond_4
    const-string v10, "tns"

    goto/16 :goto_2

    .line 433
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    # getter for: Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->enums:Ljava/util/Set;
    invoke-static {v10}, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;->access$600(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;

    .line 434
    .local v3, "en":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 436
    invoke-interface {v4}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->bindings()Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;

    move-result-object v0

    .line 437
    .restart local v0    # "child":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getTypeName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->scd(Ljava/lang/String;)V

    .line 438
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->klass()Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;

    move-result-object v10

    iget-object v11, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator;->navigator:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;->getClazz()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lae/com/sun/xml/bind/v2/schemagen/episode/Klass;->ref(Ljava/lang/String;)V

    goto :goto_4

    .line 441
    .end local v0    # "child":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    .end local v3    # "en":Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;, "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo<TT;TC;>;"
    :cond_7
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->commit(Z)V

    goto/16 :goto_0

    .line 444
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace;>;"
    .end local v4    # "group":Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v9    # "tns":Ljava/lang/String;
    :cond_8
    invoke-interface {v8}, Lae/com/sun/xml/bind/v2/schemagen/episode/Bindings;->commit()V

    .line 445
    return-void
.end method
