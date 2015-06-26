.class Lcom/google/tagmanager/UniversalAnalyticsTag;
.super Lcom/google/tagmanager/TrackingTag;
.source "UniversalAnalyticsTag.java"


# static fields
.field private static final ACCOUNT:Ljava/lang/String;

.field private static final ANALYTICS_FIELDS:Ljava/lang/String;

.field private static final ANALYTICS_PASS_THROUGH:Ljava/lang/String;

.field private static final DEFAULT_TRACKING_ID:Ljava/lang/String; = "_GTM_DEFAULT_TRACKER_"

.field private static final ID:Ljava/lang/String;

.field private static final TRACK_TRANSACTION:Ljava/lang/String;

.field private static final TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

.field private static final TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

.field private static defaultItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultTransactionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataLayer:Lcom/google/tagmanager/DataLayer;

.field private final mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

.field private final mTurnOffAnonymizeIpValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->UNIVERSAL_ANALYTICS:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ACCOUNT:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ACCOUNT:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ANALYTICS_PASS_THROUGH:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_PASS_THROUGH:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->ANALYTICS_FIELDS:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->TRACK_TRANSACTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRACK_TRANSACTION:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->TRANSACTION_DATALAYER_MAP:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->TRANSACTION_ITEM_DATALAYER_MAP:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/tagmanager/DataLayer;

    .prologue
    .line 72
    new-instance v0, Lcom/google/tagmanager/TrackerProvider;

    invoke-direct {v0, p1}, Lcom/google/tagmanager/TrackerProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/tagmanager/UniversalAnalyticsTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/TrackerProvider;)V

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/TrackerProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p3, "trackerProvider"    # Lcom/google/tagmanager/TrackerProvider;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/TrackingTag;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    .line 79
    iput-object p3, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    .line 83
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    const-string v1, "false"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "gaKey"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 145
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    return-void
.end method

.method private checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 90
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .locals 4
    .param p1, "analyticsFields"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 237
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    .line 227
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 228
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 233
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v2, "&aip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "aip":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTurnOffAnonymizeIpValues:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    const-string v2, "&aip"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getDataLayerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    invoke-virtual {v1, p1}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "data":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private getTransactionFields(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_DATALAYER_MAP:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 246
    .local v1, "map":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v2

    .line 259
    :goto_0
    return-object v2

    .line 249
    :cond_0
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "transactionId"

    const-string v3, "&ti"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "transactionAffiliation"

    const-string v3, "&ta"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "transactionTax"

    const-string v3, "&tt"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v2, "transactionShipping"

    const-string v3, "&ts"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "transactionTotal"

    const-string v3, "&tr"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "transactionCurrency"

    const-string v3, "&cu"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    .line 259
    .end local v0    # "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultTransactionMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private getTransactionItemFields(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRANSACTION_ITEM_DATALAYER_MAP:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 270
    .local v1, "map":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v1, :cond_0

    .line 271
    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v2

    .line 283
    :goto_0
    return-object v2

    .line 273
    :cond_0
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v0, "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "name"

    const-string v3, "&in"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "sku"

    const-string v3, "&ic"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v2, "category"

    const-string v3, "&iv"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "price"

    const-string v3, "&ip"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v2, "quantity"

    const-string v3, "&iq"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v2, "currency"

    const-string v3, "&cu"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sput-object v0, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    .line 283
    .end local v0    # "defaultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/google/tagmanager/UniversalAnalyticsTag;->defaultItemMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private getTransactionItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v5, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mDataLayer:Lcom/google/tagmanager/DataLayer;

    const-string v6, "transactionProducts"

    invoke-virtual {v5, v6}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "data":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 121
    const/4 v4, 0x0

    .line 140
    :goto_0
    return-object v4

    .line 123
    :cond_0
    instance-of v5, v0, Ljava/util/List;

    if-nez v5, :cond_1

    .line 124
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "transactionProducts should be of type List."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v2, v0

    .line 129
    check-cast v2, Ljava/util/List;

    .line 131
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/Map;

    if-nez v5, :cond_2

    .line 133
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Each element of transactionProducts should be of type Map."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "obj":Ljava/lang/Object;
    :cond_3
    move-object v4, v0

    .line 139
    check-cast v4, Ljava/util/List;

    .line 140
    .local v4, "retData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_0
.end method

.method private sendTransaction(Lcom/google/analytics/tracking/android/Tracker;Ljava/util/Map;)V
    .locals 17
    .param p1, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Tracker;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const-string v15, "transactionId"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getDataLayerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 155
    .local v14, "transactionId":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 156
    const-string v15, "Cannot find transactionId in data layer."

    invoke-static {v15}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v12, "sendQueue":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    sget-object v15, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v11

    .line 166
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "&t"

    const-string v16, "transaction"

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 169
    .local v13, "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 170
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getDataLayerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v15, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 196
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v15, "Unable to send transaction"

    invoke-static {v15, v2}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "transactionFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionItems()Ljava/util/List;

    move-result-object v10

    .line 175
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v10, :cond_5

    .line 176
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 177
    .local v7, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "name"

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 178
    const-string v15, "Unable to send transaction item hit due to missing \'name\' field."

    invoke-static {v15}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_3
    sget-object v15, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v9

    .line 183
    .local v9, "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "&t"

    const-string v16, "item"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v15, "&ti"

    invoke-interface {v9, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->getTransactionItemFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 187
    .local v8, "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 188
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v15, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 190
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "itemFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "itemParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 194
    .local v4, "gaParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .locals 7
    .param p1, "mapValue"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/Map;

    if-nez v5, :cond_1

    .line 208
    const/4 v4, 0x0

    .line 216
    :cond_0
    return-object v4

    :cond_1
    move-object v2, v3

    .line 211
    check-cast v2, Ljava/util/Map;

    .line 212
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    .local v4, "stringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public evaluateTrackingTag(Ljava/util/Map;)V
    .locals 3
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
    .line 95
    .local p1, "tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    iget-object v1, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    const-string v2, "_GTM_DEFAULT_TRACKER_"

    invoke-virtual {v1, v2}, Lcom/google/tagmanager/TrackerProvider;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 97
    .local v0, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_PASS_THROUGH:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->ANALYTICS_FIELDS:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {p0, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->convertToGaFields(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/UniversalAnalyticsTag;->mTrackerProvider:Lcom/google/tagmanager/TrackerProvider;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/TrackerProvider;->close(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 106
    return-void

    .line 99
    :cond_0
    sget-object v1, Lcom/google/tagmanager/UniversalAnalyticsTag;->TRACK_TRANSACTION:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->checkBooleanProperty(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/google/tagmanager/UniversalAnalyticsTag;->sendTransaction(Lcom/google/analytics/tracking/android/Tracker;Ljava/util/Map;)V

    goto :goto_0

    .line 102
    :cond_1
    const-string v1, "Ignoring unknown tag."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
