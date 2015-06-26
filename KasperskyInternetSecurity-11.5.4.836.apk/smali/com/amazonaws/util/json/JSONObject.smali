.class public Lcom/amazonaws/util/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/json/JSONObject$1;,
        Lcom/amazonaws/util/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/amazonaws/util/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONObject$Null;-><init>(Lcom/amazonaws/util/json/JSONObject$1;)V

    sput-object v0, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/util/json/JSONObject;[Ljava/lang/String;)V
    .locals 3
    .param p1, "jo"    # Lcom/amazonaws/util/json/JSONObject;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 164
    :try_start_0
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/util/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void

    .line 165
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/amazonaws/util/json/JSONTokener;)V
    .locals 4
    .param p1, "x"    # Lcom/amazonaws/util/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    .line 182
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    .line 183
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 221
    .local v0, "c":C
    .local v1, "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 186
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v0

    .line 187
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_0

    .line 193
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 194
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v0

    .line 202
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_3

    .line 203
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_2

    .line 204
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 209
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/util/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 215
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 226
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 189
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_0
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 206
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    .line 207
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 218
    :sswitch_1
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 224
    .end local v1    # "key":Ljava/lang/String;
    :sswitch_2
    return-void

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 215
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    .line 272
    invoke-direct {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->populateMap(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 290
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 291
    aget-object v2, p2, v1

    .line 293
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/util/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 294
    .restart local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/amazonaws/util/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Lcom/amazonaws/util/json/JSONTokener;)V

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # D

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    :cond_0
    const-string v0, "null"

    .line 391
    :cond_1
    :goto_0
    return-object v0

    .line 382
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 384
    :goto_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 387
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;
    .locals 5
    .param p0, "jo"    # Lcom/amazonaws/util/json/JSONObject;

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->length()I

    move-result v2

    .line 541
    .local v2, "length":I
    if-nez v2, :cond_1

    .line 542
    const/4 v3, 0x0

    .line 551
    :cond_0
    return-object v3

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 545
    .local v0, "i":Ljava/util/Iterator;
    new-array v3, v2, [Ljava/lang/String;

    .line 546
    .local v3, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 547
    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getNames(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 561
    if-nez p0, :cond_1

    .line 574
    :cond_0
    return-object v4

    .line 564
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 565
    .local v2, "klass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 566
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .line 567
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 570
    new-array v4, v3, [Ljava/lang/String;

    .line 571
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 572
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 685
    if-nez p0, :cond_0

    .line 686
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :cond_0
    invoke-static {p0}, Lcom/amazonaws/util/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 692
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 694
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 697
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_2
    return-object v0
.end method

.method private populateMap(Ljava/lang/Object;)V
    .locals 12
    .param p1, "bean"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 907
    .local v3, "klass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_0

    move v1, v9

    .line 909
    .local v1, "includeSuperClass":Z
    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 911
    .local v5, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_9

    .line 913
    :try_start_0
    aget-object v4, v5, v0

    .line 914
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 915
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 916
    .local v6, "name":Ljava/lang/String;
    const-string v2, ""

    .line 917
    .local v2, "key":Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 918
    const-string v8, "getClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "getDeclaringClass"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 920
    :cond_1
    const-string v2, ""

    .line 927
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_4

    .line 930
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 931
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 937
    :cond_3
    :goto_3
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 939
    .local v7, "result":Ljava/lang/Object;
    iget-object v8, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-static {v7}, Lcom/amazonaws/util/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 909
    .end local v0    # "i":I
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    .line 922
    .restart local v0    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 924
    :cond_7
    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 925
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 932
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 933
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_3

    .line 945
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    return-void

    .line 942
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 1104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1105
    :cond_0
    const-string v6, "\"\""

    .line 1156
    :goto_0
    return-object v6

    .line 1109
    :cond_1
    const/4 v1, 0x0

    .line 1111
    .local v1, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1112
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1115
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1117
    move v0, v1

    .line 1118
    .local v0, "b":C
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1119
    sparse-switch v1, :sswitch_data_0

    .line 1147
    const/16 v6, 0x20

    if-lt v1, v6, :cond_2

    const/16 v6, 0x80

    if-lt v1, v6, :cond_4

    const/16 v6, 0xa0

    if-ge v1, v6, :cond_4

    .line 1148
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1149
    .local v5, "t":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1116
    .end local v5    # "t":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1122
    :sswitch_0
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1123
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1126
    :sswitch_1
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_3

    .line 1127
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1129
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1132
    :sswitch_2
    const-string v6, "\\b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1135
    :sswitch_3
    const-string v6, "\\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1138
    :sswitch_4
    const-string v6, "\\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1141
    :sswitch_5
    const-string v6, "\\f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1144
    :sswitch_6
    const-string v6, "\\r"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1151
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1155
    .end local v0    # "b":C
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1156
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1119
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2e

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1186
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1232
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "b":C
    :cond_0
    :goto_0
    return-object p0

    .line 1189
    .end local v0    # "b":C
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1190
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1192
    :cond_2
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1193
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1195
    :cond_3
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1196
    sget-object p0, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 1208
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1209
    .restart local v0    # "b":C
    if-lt v0, v7, :cond_5

    const/16 v2, 0x39

    if-le v0, v2, :cond_6

    :cond_5
    if-eq v0, v6, :cond_6

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    .line 1210
    :cond_6
    if-ne v0, v7, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_8

    .line 1213
    :cond_7
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v2

    .line 1218
    :cond_8
    const/16 v2, 0x2e

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_9

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gt v2, v4, :cond_9

    const/16 v2, 0x45

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v4, :cond_a

    .line 1220
    :cond_9
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 1222
    :cond_a
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v1, "myLong":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 1224
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v2

    goto/16 :goto_0

    :cond_b
    move-object p0, v1

    .line 1226
    goto/16 :goto_0

    .line 1229
    .end local v1    # "myLong":Ljava/lang/Long;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method static testValidity(Ljava/lang/Object;)V
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1242
    if-eqz p0, :cond_3

    .line 1243
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1244
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1245
    :cond_0
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 1249
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    :cond_2
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_3
    return-void
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1407
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    :cond_0
    const-string v0, "null"

    .line 1426
    :goto_0
    return-object v0

    .line 1410
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 1411
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/amazonaws/util/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1413
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/amazonaws/util/json/JSONObject;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v0, :cond_4

    .line 1415
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1417
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1418
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1420
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 1421
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1423
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1424
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1426
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1446
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1447
    :cond_0
    const-string v0, "null"

    .line 1470
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1449
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 1450
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/amazonaws/util/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1452
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1453
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1455
    :cond_3
    instance-of v0, p0, Lcom/amazonaws/util/json/JSONObject;

    if-eqz v0, :cond_4

    .line 1456
    check-cast p0, Lcom/amazonaws/util/json/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1458
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v0, :cond_5

    .line 1459
    check-cast p0, Lcom/amazonaws/util/json/JSONArray;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/util/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1461
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 1462
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1464
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 1465
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/util/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1467
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1468
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/util/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1470
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1488
    if-nez p0, :cond_1

    .line 1489
    :try_start_0
    sget-object p0, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 1518
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 1491
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Lcom/amazonaws/util/json/JSONObject;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/amazonaws/util/json/JSONArray;

    if-nez v3, :cond_0

    sget-object v3, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Byte;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Character;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Short;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Float;

    if-nez v3, :cond_0

    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_0

    .line 1500
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 1501
    new-instance v3, Lcom/amazonaws/util/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_0

    .line 1503
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1504
    new-instance v3, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v3, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 1506
    :cond_3
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 1507
    new-instance v3, Lcom/amazonaws/util/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v3

    goto :goto_0

    .line 1509
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 1510
    .local v1, "objectPackage":Ljava/lang/Package;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, "objectPackageName":Ljava/lang/String;
    :goto_1
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "javax."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1514
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1510
    .end local v2    # "objectPackageName":Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto :goto_1

    .line 1516
    .restart local v2    # "objectPackageName":Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto/16 :goto_0

    .line 1517
    .end local v1    # "objectPackage":Ljava/lang/Package;
    .end local v2    # "objectPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "exception":Ljava/lang/Exception;
    const/4 p0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 331
    instance-of v1, p2, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v1}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 339
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 334
    .restart local v0    # "o":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v1, :cond_2

    .line 335
    check-cast v0, Lcom/amazonaws/util/json/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    goto :goto_0

    .line 337
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v1}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    goto :goto_0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 358
    new-instance v1, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v1}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    invoke-virtual {v1, p2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 365
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 359
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v1, :cond_1

    .line 360
    check-cast v0, Lcom/amazonaws/util/json/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    goto :goto_0

    .line 362
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 405
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    :cond_0
    const/4 v1, 0x0

    .line 429
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 426
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 431
    :cond_3
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 446
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 467
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_0
    return v2

    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not an int."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v1, :cond_0

    .line 488
    check-cast v0, Lcom/amazonaws/util/json/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 490
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 505
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONObject;

    if-eqz v1, :cond_0

    .line 506
    check-cast v0, Lcom/amazonaws/util/json/JSONObject;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 508
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 524
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a long."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public increment(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 612
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;I)Lcom/amazonaws/util/json/JSONObject;

    .line 626
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 614
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 615
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;I)Lcom/amazonaws/util/json/JSONObject;

    goto :goto_0

    .line 616
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 617
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;J)Lcom/amazonaws/util/json/JSONObject;

    goto :goto_0

    .line 618
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 619
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;D)Lcom/amazonaws/util/json/JSONObject;

    goto :goto_0

    .line 620
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 621
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;D)Lcom/amazonaws/util/json/JSONObject;

    goto :goto_0

    .line 623
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to increment ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 638
    sget-object v0, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public names()Lcom/amazonaws/util/json/JSONArray;
    .locals 3

    .prologue
    .line 669
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    .line 670
    .local v0, "ja":Lcom/amazonaws/util/json/JSONArray;
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 671
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .end local v0    # "ja":Lcom/amazonaws/util/json/JSONArray;
    :cond_1
    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 711
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 739
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 741
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 740
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 756
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 772
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 773
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 776
    :goto_0
    return-wide v2

    .line 773
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/Double;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-wide v2, p2

    .line 776
    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 807
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 809
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 808
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 824
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazonaws/util/json/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 838
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazonaws/util/json/JSONObject;

    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 852
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 868
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 870
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 869
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 884
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 898
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public put(Ljava/lang/String;D)Lcom/amazonaws/util/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 985
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 986
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/amazonaws/util/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 1000
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/amazonaws/util/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 1014
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1044
    if-nez p1, :cond_0

    .line 1045
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_0
    if-eqz p2, :cond_1

    .line 1048
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :goto_0
    return-object p0

    .line 1051
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)Lcom/amazonaws/util/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 972
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lcom/amazonaws/util/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1027
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 1028
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/amazonaws/util/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 957
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 958
    return-object p0

    .line 957
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1067
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1068
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 1073
    :cond_1
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1088
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1089
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 1091
    :cond_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortedKeys()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1176
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Lcom/amazonaws/util/json/JSONArray;)Lcom/amazonaws/util/json/JSONArray;
    .locals 3
    .param p1, "names"    # Lcom/amazonaws/util/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1268
    :cond_0
    const/4 v1, 0x0

    .line 1274
    :cond_1
    return-object v1

    .line 1270
    :cond_2
    new-instance v1, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v1}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    .line 1271
    .local v1, "ja":Lcom/amazonaws/util/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1272
    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 1271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1291
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1292
    .local v1, "keys":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1295
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1296
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1298
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1299
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1300
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1301
    iget-object v4, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1305
    .end local v1    # "keys":Ljava/util/Iterator;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 1303
    .restart local v1    # "keys":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1304
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "indentFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 10
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 1343
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->length()I

    move-result v2

    .line 1344
    .local v2, "n":I
    if-nez v2, :cond_0

    .line 1345
    const-string v6, "{}"

    .line 1381
    :goto_0
    return-object v6

    .line 1347
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->sortedKeys()Ljava/util/Iterator;

    move-result-object v1

    .line 1348
    .local v1, "keys":Ljava/util/Iterator;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1349
    .local v5, "sb":Ljava/lang/StringBuffer;
    add-int v3, p2, p1

    .line 1351
    .local v3, "newindent":I
    if-ne v2, v7, :cond_3

    .line 1352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1353
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    iget-object v6, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1380
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1381
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1368
    .local v0, "j":I
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1369
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1370
    iget-object v6, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    .end local v0    # "j":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1360
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_4

    .line 1361
    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    :goto_1
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 1366
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1363
    .end local v0    # "j":I
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1373
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 1374
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1375
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_3
    if-ge v0, p2, :cond_1

    .line 1376
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1375
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1534
    const/4 v0, 0x0

    .line 1535
    .local v0, "b":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1536
    .local v3, "keys":Ljava/util/Iterator;
    const/16 v5, 0x7b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1538
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1539
    if-eqz v0, :cond_0

    .line 1540
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1542
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1543
    .local v2, "k":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1544
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 1545
    iget-object v5, p0, Lcom/amazonaws/util/json/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1546
    .local v4, "v":Ljava/lang/Object;
    instance-of v5, v4, Lcom/amazonaws/util/json/JSONObject;

    if-eqz v5, :cond_1

    .line 1547
    check-cast v4, Lcom/amazonaws/util/json/JSONObject;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/amazonaws/util/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 1553
    :goto_1
    const/4 v0, 0x1

    .line 1554
    goto :goto_0

    .line 1548
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v5, :cond_2

    .line 1549
    check-cast v4, Lcom/amazonaws/util/json/JSONArray;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/amazonaws/util/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1557
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "keys":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "exception":Ljava/io/IOException;
    new-instance v5, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v5, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1551
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v2    # "k":Ljava/lang/Object;
    .restart local v3    # "keys":Ljava/util/Iterator;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1555
    .end local v2    # "k":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1556
    return-object p1
.end method
