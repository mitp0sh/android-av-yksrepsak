.class Lcom/google/tagmanager/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static DEFAULT_BOOLEAN:Ljava/lang/Boolean;

.field private static DEFAULT_DOUBLE:Ljava/lang/Double;

.field private static DEFAULT_INT64:Ljava/lang/Long;

.field private static DEFAULT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

.field private static final DEFAULT_OBJECT:Ljava/lang/Object;

.field private static DEFAULT_STRING:Ljava/lang/String;

.field private static DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    .line 46
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    .line 47
    invoke-static {v4, v5}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    .line 52
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static functionIdToValue(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 258
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x5

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 259
    iput-object p0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->functionId:Ljava/lang/String;

    .line 260
    return-object v0
.end method

.method public static getDefaultBoolean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getDefaultDouble()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    return-object v0
.end method

.method public static getDefaultInt64()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    return-object v0
.end method

.method public static getDefaultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getDefaultMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultNumber()Lcom/google/tagmanager/TypedNumber;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    return-object v0
.end method

.method public static getDefaultObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method public static getDefaultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 301
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 302
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 305
    .restart local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .line 304
    :cond_0
    const-string v0, "getDouble received non-Number"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 305
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static getInt64(Ljava/lang/Object;)J
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 325
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 326
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 329
    .restart local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .line 328
    :cond_0
    const-string v0, "getInt64 received non-Number"

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 329
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static isDoubleableNumber(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 291
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInt64ableNumber(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 314
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/tagmanager/TypedNumber;->isInt64()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs macroReferenceToValue(Ljava/lang/String;[I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2
    .param p0, "macroName"    # Ljava/lang/String;
    .param p1, "escapings"    # [I

    .prologue
    .line 264
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 265
    .local v0, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 266
    iput-object p0, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 268
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    .line 269
    return-object v0
.end method

.method public static objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 139
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0
.end method

.method public static objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseInt64(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    instance-of v0, p0, Lcom/google/tagmanager/TypedNumber;

    if-eqz v0, :cond_0

    .line 112
    check-cast p0, Lcom/google/tagmanager/TypedNumber;

    .line 118
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 113
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/tagmanager/TypedNumber;->numberWithInt64(J)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/TypedNumber;->numberWithDouble(Ljava/lang/Double;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object p0

    goto :goto_0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 107
    if-nez p0, :cond_0

    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 15
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 184
    new-instance v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v9}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 185
    .local v9, "returnValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v0, 0x0

    .line 187
    .local v0, "containsRef":Z
    instance-of v13, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v13, :cond_0

    .line 188
    check-cast p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 248
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 189
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v13, p0, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 190
    const/4 v13, 0x1

    iput v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 191
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    iput-object p0, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    .line 247
    :goto_1
    iput-boolean v0, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    move-object p0, v9

    .line 248
    goto :goto_0

    .line 192
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v13, p0, Ljava/util/List;

    if-eqz v13, :cond_6

    .line 193
    const/4 v13, 0x2

    iput v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    move-object v8, p0

    .line 195
    check-cast v8, Ljava/util/List;

    .line 196
    .local v8, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v11, "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 198
    .local v6, "listObject":Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v7

    .line 199
    .local v7, "listValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v13, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-ne v7, v13, :cond_2

    .line 202
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto :goto_0

    .line 204
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v13, v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v13, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 205
    :goto_3
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 208
    .end local v6    # "listObject":Ljava/lang/Object;
    .end local v7    # "listValue":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_5
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto :goto_1

    .line 209
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "valueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    :cond_6
    instance-of v13, p0, Ljava/util/Map;

    if-eqz v13, :cond_c

    .line 210
    const/4 v13, 0x3

    iput v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 212
    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 213
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v12, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 216
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    .line 217
    .local v4, "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    .line 218
    .local v10, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    sget-object v13, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eq v4, v13, :cond_7

    sget-object v13, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-ne v10, v13, :cond_8

    .line 221
    :cond_7
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto/16 :goto_0

    .line 223
    :cond_8
    if-nez v0, :cond_9

    iget-boolean v13, v4, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-nez v13, :cond_9

    iget-boolean v13, v10, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v13, :cond_a

    :cond_9
    const/4 v0, 0x1

    .line 224
    :goto_5
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 223
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 228
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "key":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v10    # "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_b
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v5, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 229
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto/16 :goto_1

    .line 230
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .end local v12    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;>;"
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_c
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isDoubleableNumber(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 233
    const/4 v13, 0x1

    iput v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto/16 :goto_1

    .line 235
    :cond_d
    invoke-static {p0}, Lcom/google/tagmanager/Types;->isInt64ableNumber(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 236
    const/4 v13, 0x6

    iput v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 237
    invoke-static {p0}, Lcom/google/tagmanager/Types;->getInt64(Ljava/lang/Object;)J

    move-result-wide v13

    iput-wide v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    goto/16 :goto_1

    .line 238
    :cond_e
    instance-of v13, p0, Ljava/lang/Boolean;

    if-eqz v13, :cond_f

    .line 239
    const/16 v13, 0x8

    iput v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 240
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iput-boolean v13, v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    goto/16 :goto_1

    .line 242
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Converting to Value from unknown object type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez p0, :cond_10

    const-string v13, "null"

    :goto_6
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 244
    sget-object p0, Lcom/google/tagmanager/Types;->DEFAULT_VALUE:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    goto/16 :goto_0

    .line 242
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6
.end method

.method private static parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 372
    :goto_0
    return-object v0

    .line 369
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Lcom/google/tagmanager/Types;->DEFAULT_BOOLEAN:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 363
    .local v0, "result":Lcom/google/tagmanager/TypedNumber;
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_DOUBLE:Ljava/lang/Double;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseInt64(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p0}, Lcom/google/tagmanager/Types;->parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    .line 356
    .local v0, "result":Lcom/google/tagmanager/TypedNumber;
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_INT64:Ljava/lang/Long;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/tagmanager/TypedNumber;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseNumber(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 345
    :try_start_0
    invoke-static {p0}, Lcom/google/tagmanager/TypedNumber;->numberWithString(Ljava/lang/String;)Lcom/google/tagmanager/TypedNumber;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "longError":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/google/tagmanager/Types;->DEFAULT_NUMBER:Lcom/google/tagmanager/TypedNumber;

    goto :goto_0
.end method

.method public static varargs templateToValue([Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 5
    .param p0, "tokens"    # [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 273
    new-instance v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    .line 274
    .local v2, "value":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    const/4 v3, 0x7

    iput v3, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "containsRef":Z
    array-length v3, p0

    new-array v3, v3, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v3, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 278
    iget-object v3, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v4, p0, v1

    aput-object v4, v3, v1

    .line 279
    if-nez v0, :cond_0

    aget-object v3, p0, v1

    iget-boolean v3, v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 277
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 281
    :cond_2
    iput-boolean v0, v2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    .line 283
    return-object v2
.end method

.method public static valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static valueToDouble(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Double;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static valueToInt64(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Long;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToInt64(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueToNumber(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/TypedNumber;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToNumber(Ljava/lang/Object;)Lcom/google/tagmanager/TypedNumber;

    move-result-object v0

    return-object v0
.end method

.method public static valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;
    .locals 14
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 378
    if-nez p0, :cond_1

    .line 379
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    .line 458
    :cond_0
    :goto_0
    return-object v7

    .line 382
    :cond_1
    iget v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    packed-switch v12, :pswitch_data_0

    .line 457
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to convert a value of type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 458
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto :goto_0

    .line 384
    :pswitch_0
    iget-object v7, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    goto :goto_0

    .line 387
    :pswitch_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .local v0, "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v10, v0, v2

    .line 389
    .local v10, "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v10}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v5

    .line 390
    .local v5, "o":Ljava/lang/Object;
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-ne v5, v12, :cond_2

    .line 393
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v10    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :pswitch_2
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    iget-object v13, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v13, v13

    if-eq v12, v13, :cond_3

    .line 403
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Converting an invalid value to object: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 404
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto :goto_0

    .line 406
    :cond_3
    new-instance v8, Ljava/util/LinkedHashMap;

    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    invoke-direct {v8, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 407
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v12, v12

    if-ge v1, v12, :cond_6

    .line 408
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v12, v12, v1

    invoke-static {v12}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v3

    .line 409
    .local v3, "key":Ljava/lang/Object;
    iget-object v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v12, v12, v1

    invoke-static {v12}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v11

    .line 410
    .local v11, "value":Ljava/lang/Object;
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-eq v3, v12, :cond_4

    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    if-ne v11, v12, :cond_5

    .line 413
    :cond_4
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto/16 :goto_0

    .line 415
    :cond_5
    invoke-interface {v8, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_6
    move-object v7, v8

    .line 418
    goto/16 :goto_0

    .line 426
    .end local v1    # "i":I
    .end local v8    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_3
    const-string v12, "Trying to convert a macro reference to object"

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 427
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto/16 :goto_0

    .line 434
    :pswitch_4
    const-string v12, "Trying to convert a function id to object"

    invoke-static {v12}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 435
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto/16 :goto_0

    .line 438
    :pswitch_5
    iget-wide v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->integer:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_0

    .line 441
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v6, "result":Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .restart local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v4, :cond_8

    aget-object v10, v0, v2

    .line 443
    .restart local v10    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    invoke-static {v10}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, "s":Ljava/lang/String;
    sget-object v12, Lcom/google/tagmanager/Types;->DEFAULT_STRING:Ljava/lang/String;

    if-ne v9, v12, :cond_7

    .line 445
    sget-object v7, Lcom/google/tagmanager/Types;->DEFAULT_OBJECT:Ljava/lang/Object;

    goto/16 :goto_0

    .line 447
    :cond_7
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 450
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "val":Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 454
    .end local v0    # "arr$":[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "result":Ljava/lang/StringBuffer;
    :pswitch_7
    iget-boolean v12, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->boolean_:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToObject(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
