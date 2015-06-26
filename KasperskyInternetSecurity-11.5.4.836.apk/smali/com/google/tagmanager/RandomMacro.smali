.class Lcom/google/tagmanager/RandomMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "RandomMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final MAX:Ljava/lang/String;

.field private static final MIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->RANDOM:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->MIN:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RandomMacro;->MIN:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/analytics/containertag/common/Key;->MAX:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/RandomMacro;->MAX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/tagmanager/RandomMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    const-wide/16 v7, 0x0

    .line 34
    .local v7, "min":D
    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    .line 35
    .local v1, "max":D
    sget-object v13, Lcom/google/tagmanager/RandomMacro;->MIN:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 36
    .local v11, "minParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v13, Lcom/google/tagmanager/RandomMacro;->MAX:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 37
    .local v5, "maxParameter":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    if-eqz v11, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v13

    if-eq v11, v13, :cond_0

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v13

    if-eq v5, v13, :cond_0

    .line 39
    invoke-static {v11}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v12

    .line 40
    .local v12, "minValue":Lcom/google/tagmanager/TypedNumber;
    invoke-static {v5}, Lcom/google/tagmanager/Types;->valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v6

    .line 41
    .local v6, "maxValue":Lcom/google/tagmanager/TypedNumber;
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v13

    if-eq v12, v13, :cond_0

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultNumber()Lcom/google/tagmanager/TypedNumber;

    move-result-object v13

    if-eq v6, v13, :cond_0

    .line 42
    invoke-virtual {v12}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v9

    .line 43
    .local v9, "minDouble":D
    invoke-virtual {v6}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v3

    .line 44
    .local v3, "maxDouble":D
    cmpg-double v13, v9, v3

    if-gtz v13, :cond_0

    .line 47
    move-wide v7, v9

    .line 48
    move-wide v1, v3

    .line 52
    .end local v3    # "maxDouble":D
    .end local v6    # "maxValue":Lcom/google/tagmanager/TypedNumber;
    .end local v9    # "minDouble":D
    .end local v12    # "minValue":Lcom/google/tagmanager/TypedNumber;
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    sub-double v15, v1, v7

    mul-double/2addr v13, v15

    add-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v13}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v13

    return-object v13
.end method

.method public isCacheable()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
