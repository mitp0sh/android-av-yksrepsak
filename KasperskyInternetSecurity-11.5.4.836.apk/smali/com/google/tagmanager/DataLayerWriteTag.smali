.class Lcom/google/tagmanager/DataLayerWriteTag;
.super Lcom/google/tagmanager/TrackingTag;
.source "DataLayerWriteTag.java"


# static fields
.field private static final CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Ljava/lang/String;

.field private static final ID:Ljava/lang/String;

.field private static final VALUE:Ljava/lang/String;


# instance fields
.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->DATA_LAYER_WRITE:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->VALUE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->VALUE:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/DataLayer;)V
    .locals 4
    .param p1, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

    .prologue
    .line 26
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/tagmanager/DataLayerWriteTag;->VALUE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/TrackingTag;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 28
    return-void
.end method

.method private clearPersistent(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultObject()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private pushToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 6
    .param p1, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultObject()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 65
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v1, v3

    .line 56
    check-cast v1, Ljava/util/List;

    .line 57
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_2

    move-object v2, v4

    .line 62
    check-cast v2, Ljava/util/Map;

    .line 63
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/google/tagmanager/DataLayerWriteTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v5, v2}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public evaluateTrackingTag(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerWriteTag;->pushToDataLayer(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 33
    sget-object v0, Lcom/google/tagmanager/DataLayerWriteTag;->CLEAR_PERSISTENT_DATA_LAYER_PREFIX:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerWriteTag;->clearPersistent(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 34
    return-void
.end method
