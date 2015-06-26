.class public Lcom/amazonaws/util/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/util/json/JSONTokener;)V
    .locals 5
    .param p1, "x"    # Lcom/amazonaws/util/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 105
    invoke-direct {p0}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v0

    .line 108
    .local v0, "c":C
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 109
    const/16 v1, 0x5d

    .line 115
    .local v1, "q":C
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v2

    if-ne v2, v4, :cond_3

    .line 141
    :cond_0
    return-void

    .line 110
    .end local v1    # "q":C
    :cond_1
    const/16 v2, 0x28

    if-ne v0, v2, :cond_2

    .line 111
    const/16 v1, 0x29

    .restart local v1    # "q":C
    goto :goto_0

    .line 113
    .end local v1    # "q":C
    :cond_2
    const-string v2, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 118
    .restart local v1    # "q":C
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 120
    :goto_1
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 122
    iget-object v2, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_2
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v0

    .line 128
    sparse-switch v0, :sswitch_data_0

    .line 143
    const-string v2, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 124
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 125
    iget-object v2, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    :sswitch_0
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v2

    if-eq v2, v4, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    goto :goto_1

    .line 138
    :sswitch_1
    if-eq v1, v0, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/amazonaws/util/json/JSONArray;-><init>()V

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 185
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 186
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    const-string v3, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v2, v3}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    return-void
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
    .line 157
    new-instance v0, Lcom/amazonaws/util/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Lcom/amazonaws/util/json/JSONTokener;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 169
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/amazonaws/util/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 222
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

    .line 225
    :cond_0
    const/4 v1, 0x0

    .line 229
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 226
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

    .line 229
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 231
    :cond_3
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(I)D
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 246
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

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method

.method public getJSONArray(I)Lcom/amazonaws/util/json/JSONArray;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Lcom/amazonaws/util/json/JSONArray;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 284
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Lcom/amazonaws/util/json/JSONObject;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazonaws/util/json/JSONObject;

    if-eqz v1, :cond_0

    .line 299
    check-cast v0, Lcom/amazonaws/util/json/JSONObject;

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .line 301
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 338
    sget-object v0, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v1

    .line 352
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 355
    if-lez v0, :cond_0

    .line 356
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public length()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 381
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 412
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 411
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 426
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # D

    .prologue
    .line 441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 443
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .line 442
    .restart local p2    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 471
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 473
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 472
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optJSONArray(I)Lcom/amazonaws/util/json/JSONArray;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 486
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

.method public optJSONObject(I)Lcom/amazonaws/util/json/JSONObject;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 500
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

.method public optLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 513
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # J

    .prologue
    .line 527
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 529
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 528
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 543
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 557
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public put(D)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 594
    .local v0, "d":Ljava/lang/Double;
    invoke-static {v0}, Lcom/amazonaws/util/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 595
    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 596
    return-object p0
.end method

.method public put(I)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 607
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 608
    return-object p0
.end method

.method public put(ID)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 691
    return-object p0
.end method

.method public put(II)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 706
    return-object p0
.end method

.method public put(IJ)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 720
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 721
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 754
    if-gez p1, :cond_0

    .line 755
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 765
    :goto_0
    return-object p0

    .line 760
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 761
    sget-object v0, Lcom/amazonaws/util/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    goto :goto_1

    .line 763
    :cond_2
    invoke-virtual {p0, p2}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 675
    return-object p0
.end method

.method public put(ILjava/util/Map;)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 736
    return-object p0
.end method

.method public put(IZ)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 659
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->put(ILjava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 660
    return-object p0

    .line 659
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 619
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 620
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Collection;

    .prologue
    .line 580
    new-instance v0, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 581
    return-object p0
.end method

.method public put(Ljava/util/Map;)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Map;

    .prologue
    .line 631
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 632
    return-object p0
.end method

.method public put(Z)Lcom/amazonaws/util/json/JSONArray;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 568
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->put(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONArray;

    .line 569
    return-object p0

    .line 568
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 776
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 777
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 778
    return-object v0
.end method

.method public toJSONObject(Lcom/amazonaws/util/json/JSONArray;)Lcom/amazonaws/util/json/JSONObject;
    .locals 4
    .param p1, "names"    # Lcom/amazonaws/util/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 792
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 793
    :cond_0
    const/4 v1, 0x0

    .line 799
    :cond_1
    return-object v1

    .line 795
    :cond_2
    new-instance v1, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v1}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    .line 796
    .local v1, "jo":Lcom/amazonaws/util/json/JSONObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 797
    invoke-virtual {p1, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 816
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 818
    :goto_0
    return-object v1

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
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
    .line 835
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 8
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 850
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    .line 851
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 852
    const-string v5, "[]"

    .line 878
    :goto_0
    return-object v5

    .line 855
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 856
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 857
    iget-object v5, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 877
    :cond_1
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 878
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 860
    :cond_2
    add-int v3, p2, p1

    .line 861
    .local v3, "newindent":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 862
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 863
    if-lez v0, :cond_3

    .line 864
    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    :cond_3
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 867
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 869
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, v3}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 872
    .end local v1    # "j":I
    :cond_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 873
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_1

    .line 874
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 873
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
    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "b":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v3

    .line 896
    .local v3, "len":I
    const/16 v5, 0x5b

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 898
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 899
    if-eqz v0, :cond_0

    .line 900
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 902
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/util/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 903
    .local v4, "v":Ljava/lang/Object;
    instance-of v5, v4, Lcom/amazonaws/util/json/JSONObject;

    if-eqz v5, :cond_1

    .line 904
    check-cast v4, Lcom/amazonaws/util/json/JSONObject;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/amazonaws/util/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    .line 910
    :goto_1
    const/4 v0, 0x1

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 905
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Lcom/amazonaws/util/json/JSONArray;

    if-eqz v5, :cond_2

    .line 906
    check-cast v4, Lcom/amazonaws/util/json/JSONArray;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4, p1}, Lcom/amazonaws/util/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 914
    .end local v2    # "i":I
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 915
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v5, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 908
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 912
    .end local v4    # "v":Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 913
    return-object p1
.end method
