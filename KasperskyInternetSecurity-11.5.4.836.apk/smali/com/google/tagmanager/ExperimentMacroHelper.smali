.class public Lcom/google/tagmanager/ExperimentMacroHelper;
.super Ljava/lang/Object;
.source "ExperimentMacroHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 5
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .prologue
    .line 34
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToClear:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 35
    .local v3, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_0
    return-void
.end method

.method public static handleExperimentSupplemental(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$Supplemental;)V
    .locals 1
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "supplemental"    # Lcom/google/analytics/containertag/proto/Serving$Supplemental;

    .prologue
    .line 24
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "supplemental missing experimentSupplemental"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->clearKeys(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 29
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    .line 30
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Supplemental;->experimentSupplemental:Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    invoke-static {p0, v0}, Lcom/google/tagmanager/ExperimentMacroHelper;->setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V

    goto :goto_0
.end method

.method private static pushValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 5
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .prologue
    .line 40
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->valueToPush:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 41
    .local v4, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v4}, Lcom/google/tagmanager/ExperimentMacroHelper;->valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;

    move-result-object v3

    .line 42
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p0, v3}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_1
    return-void
.end method

.method private static setRandomValues(Lcom/google/tagmanager/DataLayer;Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;)V
    .locals 21
    .param p0, "dataLayer"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "expSupplemental"    # Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;

    .prologue
    .line 50
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/analytics/containertag/proto/Serving$GaExperimentSupplemental;->experimentRandom:[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;

    .local v2, "arr$":[Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_8

    aget-object v3, v2, v5

    .line 51
    .local v3, "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    iget-object v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 52
    const-string v16, "GaExperimentRandom: No key"

    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 50
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 59
    .local v14, "random":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/Number;

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 60
    const/4 v15, 0x0

    .line 69
    .local v15, "randomValue":Ljava/lang/Long;
    :goto_2
    iget-wide v10, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->minRandom:J

    .line 70
    .local v10, "minRandom":J
    iget-wide v8, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->maxRandom:J

    .line 71
    .local v8, "maxRandom":J
    iget-boolean v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->retainOriginalValue:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v10

    if-ltz v16, :cond_1

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v8

    if-lez v16, :cond_2

    .line 73
    :cond_1
    cmp-long v16, v10, v8

    if-gtz v16, :cond_5

    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    sub-long v18, v8, v10

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    long-to-double v0, v10

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 82
    .end local v14    # "random":Ljava/lang/Object;
    :cond_2
    iget-object v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/DataLayer;->clearPersistentKeysWithPrefix(Ljava/lang/String;)V

    .line 85
    iget-object v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    .line 87
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-wide v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    .line 88
    const-string v16, "gtm"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 89
    const-string v16, "gtm"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "lifetime"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    iget-wide v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/google/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto/16 :goto_1

    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "maxRandom":J
    .end local v10    # "minRandom":J
    .end local v15    # "randomValue":Ljava/lang/Long;
    .restart local v14    # "random":Ljava/lang/Object;
    :cond_4
    move-object v12, v14

    .line 63
    check-cast v12, Ljava/lang/Number;

    .line 64
    .local v12, "n":Ljava/lang/Number;
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .restart local v15    # "randomValue":Ljava/lang/Long;
    goto/16 :goto_2

    .line 76
    .end local v12    # "n":Ljava/lang/Number;
    .restart local v8    # "maxRandom":J
    .restart local v10    # "minRandom":J
    :cond_5
    const-string v16, "GaExperimentRandom: random range invalid"

    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    .end local v14    # "random":Ljava/lang/Object;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_6
    const-string v16, "gtm"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 92
    .local v13, "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/util/Map;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object v4, v13

    .line 94
    check-cast v4, Ljava/util/Map;

    .line 100
    .local v4, "gtmMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v16, "lifetime"

    iget-wide v0, v3, Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;->lifetimeInMilliseconds:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 102
    .end local v4    # "gtmMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_7
    const-string v16, "GaExperimentRandom: gtm not a map"

    invoke-static/range {v16 .. v16}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 110
    .end local v3    # "expRandom":Lcom/google/analytics/containertag/proto/Serving$GaExperimentRandom;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "maxRandom":J
    .end local v10    # "minRandom":J
    .end local v13    # "o":Ljava/lang/Object;
    .end local v15    # "randomValue":Ljava/lang/Long;
    :cond_8
    return-void
.end method

.method private static valueToMap(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/Map;
    .locals 4
    .param p0, "value"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "valueAsObject":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a map value, ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 119
    check-cast v0, Ljava/util/Map;

    .line 120
    .local v0, "valueAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0
.end method
