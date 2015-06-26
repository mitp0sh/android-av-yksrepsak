.class public Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
.super Ljava/lang/Object;
.source "JAXBContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAXBContextBuilder"
.end annotation


# instance fields
.field private allNillable:Z

.field private annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation
.end field

.field private c14nSupport:Z

.field private classes:[Ljava/lang/Class;

.field private defaultNsUri:Ljava/lang/String;

.field private improvedXsiTypeHandling:Z

.field private retainPropertyInfo:Z

.field private subclassReplacements:Ljava/util/Map;
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

.field private supressAccessorWarnings:Z

.field private typeRefs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;"
        }
    .end annotation
.end field

.field private xmlAccessorFactorySupport:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->retainPropertyInfo:Z

    .line 1064
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->supressAccessorWarnings:Z

    .line 1065
    const-string v0, ""

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    .line 1066
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 1067
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    .line 1068
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->c14nSupport:Z

    .line 1071
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->xmlAccessorFactorySupport:Z

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->improvedXsiTypeHandling:Z

    .line 1075
    return-void
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)V
    .locals 2
    .param p1, "baseImpl"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    .prologue
    const/4 v1, 0x0

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->retainPropertyInfo:Z

    .line 1064
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->supressAccessorWarnings:Z

    .line 1065
    const-string v0, ""

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    .line 1066
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 1067
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    .line 1068
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->c14nSupport:Z

    .line 1071
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->xmlAccessorFactorySupport:Z

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->improvedXsiTypeHandling:Z

    .line 1078
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->supressAccessorWarnings:Z

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->supressAccessorWarnings:Z

    .line 1079
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->retainPropertyInfo:Z

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->retainPropertyInfo:Z

    .line 1080
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->defaultNsUri:Ljava/lang/String;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->access$1100(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    .line 1081
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->access$1200(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 1082
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->subclassReplacements:Ljava/util/Map;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->access$1300(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    .line 1083
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->c14nSupport:Z

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->c14nSupport:Z

    .line 1084
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->classes:[Ljava/lang/Class;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->access$1400(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->classes:[Ljava/lang/Class;

    .line 1085
    # getter for: Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->bridges:Ljava/util/Map;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->access$1500(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->typeRefs:Ljava/util/Collection;

    .line 1086
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->xmlAccessorFactorySupport:Z

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->xmlAccessorFactorySupport:Z

    .line 1087
    iget-boolean v0, p1, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->allNillable:Z

    iput-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->allNillable:Z

    .line 1088
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->retainPropertyInfo:Z

    return v0
.end method

.method static synthetic access$1000(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->typeRefs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    return-object v0
.end method

.method static synthetic access$300(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->c14nSupport:Z

    return v0
.end method

.method static synthetic access$500(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->classes:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->xmlAccessorFactorySupport:Z

    return v0
.end method

.method static synthetic access$700(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->allNillable:Z

    return v0
.end method

.method static synthetic access$800(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->supressAccessorWarnings:Z

    return v0
.end method

.method static synthetic access$900(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->improvedXsiTypeHandling:Z

    return v0
.end method


# virtual methods
.method public build()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1149
    const-string v0, ""

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    .line 1152
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1153
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    .line 1156
    :cond_1
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    if-nez v0, :cond_2

    .line 1157
    new-instance v0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 1160
    :cond_2
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->typeRefs:Ljava/util/Collection;

    if-nez v0, :cond_3

    .line 1161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->typeRefs:Ljava/util/Collection;

    .line 1164
    :cond_3
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$1;)V

    return-object v0
.end method

.method public setAllNillable(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1116
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->allNillable:Z

    .line 1117
    return-object p0
.end method

.method public setAnnotationReader(Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .prologue
    .line 1126
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->annotationReader:Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 1127
    return-object p0
.end method

.method public setC14NSupport(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1101
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->c14nSupport:Z

    .line 1102
    return-object p0
.end method

.method public setClasses([Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # [Ljava/lang/Class;

    .prologue
    .line 1121
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->classes:[Ljava/lang/Class;

    .line 1122
    return-object p0
.end method

.method public setDefaultNsUri(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 1111
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->defaultNsUri:Ljava/lang/String;

    .line 1112
    return-object p0
.end method

.method public setImprovedXsiTypeHandling(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1141
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->improvedXsiTypeHandling:Z

    .line 1142
    return-object p0
.end method

.method public setRetainPropertyInfo(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1091
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->retainPropertyInfo:Z

    .line 1092
    return-object p0
.end method

.method public setSubclassReplacements(Ljava/util/Map;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->subclassReplacements:Ljava/util/Map;

    .line 1132
    return-object p0
.end method

.method public setSupressAccessorWarnings(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1096
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->supressAccessorWarnings:Z

    .line 1097
    return-object p0
.end method

.method public setTypeRefs(Ljava/util/Collection;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;"
        }
    .end annotation

    .prologue
    .line 1136
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->typeRefs:Ljava/util/Collection;

    .line 1137
    return-object p0
.end method

.method public setXmlAccessorFactorySupport(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1106
    iput-boolean p1, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->xmlAccessorFactorySupport:Z

    .line 1107
    return-object p0
.end method
