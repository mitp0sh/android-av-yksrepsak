.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;
.super Ljava/lang/Object;
.source "JsonPolicyWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sortConditionsByKey(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v1, "conditionValuesByConditionKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Condition;

    .line 137
    .local v0, "condition":Lcom/amazonaws/auth/policy/Condition;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getConditionKey()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getValues()Ljava/util/List;

    move-result-object v4

    .line 140
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 146
    .end local v0    # "condition":Lcom/amazonaws/auth/policy/Condition;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method private sortConditionsByType(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v2, "conditionsByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Condition;

    .line 152
    .local v0, "condition":Lcom/amazonaws/auth/policy/Condition;
    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Condition;->getType()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "conditionType":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v0    # "condition":Lcom/amazonaws/auth/policy/Condition;
    .end local v1    # "conditionType":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private writeActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 4
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "generator"    # Lcom/amazonaws/util/json/JSONWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getActions()Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Action;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v3, "Action"

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Action;

    .line 181
    .local v0, "action":Lcom/amazonaws/auth/policy/Action;
    invoke-interface {v0}, Lcom/amazonaws/auth/policy/Action;->getActionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_1

    .line 183
    .end local v0    # "action":Lcom/amazonaws/auth/policy/Action;
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method

.method private writeConditions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 10
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "generator"    # Lcom/amazonaws/util/json/JSONWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getConditions()Ljava/util/List;

    move-result-object v3

    .line 102
    .local v3, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-direct {p0, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->sortConditionsByType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 111
    .local v4, "conditionsByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;>;"
    const-string v9, "Condition"

    invoke-virtual {p2, v9}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 112
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "conditionType":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 120
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->sortConditionsByKey(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 121
    .local v2, "conditionValuesByKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "conditionKey":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 123
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 124
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p2, v8}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    .line 126
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_2

    .line 128
    .end local v0    # "conditionKey":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_1

    .line 130
    .end local v1    # "conditionType":Ljava/lang/String;
    .end local v2    # "conditionValuesByKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method

.method private writePolicy(Lcom/amazonaws/auth/policy/Policy;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 4
    .param p1, "policy"    # Lcom/amazonaws/auth/policy/Policy;
    .param p2, "generator"    # Lcom/amazonaws/util/json/JSONWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 73
    const-string v2, "Version"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    const-string v2, "Id"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 79
    :cond_0
    const-string v2, "Statement"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 80
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Policy;->getStatements()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Statement;

    .line 81
    .local v1, "statement":Lcom/amazonaws/auth/policy/Statement;
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 82
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "Sid"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 85
    :cond_1
    const-string v2, "Effect"

    invoke-virtual {p2, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Statement;->getEffect()Lcom/amazonaws/auth/policy/Statement$Effect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/auth/policy/Statement$Effect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 87
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    .line 88
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    .line 89
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    .line 90
    invoke-direct {p0, v1, p2}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writeConditions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V

    .line 92
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0

    .line 94
    .end local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 96
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    return-void
.end method

.method private writePrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 9
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "generator"    # Lcom/amazonaws/util/json/JSONWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v6

    .line 193
    .local v6, "principals":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Principal;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v8, "Principal"

    invoke-virtual {p2, v8}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v3, "principalContentsByScheme":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/auth/policy/Principal;

    .line 198
    .local v2, "p":Lcom/amazonaws/auth/policy/Principal;
    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 199
    .local v5, "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .restart local v5    # "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_2
    invoke-virtual {v2}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    .end local v2    # "p":Lcom/amazonaws/auth/policy/Principal;
    .end local v5    # "principalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 206
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {p2, v7}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 207
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, "principalId":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    .line 210
    .end local v4    # "principalId":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_2

    .line 212
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method

.method private writeResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONWriter;)V
    .locals 4
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "generator"    # Lcom/amazonaws/util/json/JSONWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getResources()Ljava/util/List;

    move-result-object v2

    .line 165
    .local v2, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Resource;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v3, "Resource"

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 168
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/policy/Resource;

    .line 169
    .local v1, "resource":Lcom/amazonaws/auth/policy/Resource;
    invoke-virtual {v1}, Lcom/amazonaws/auth/policy/Resource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_1

    .line 171
    .end local v1    # "resource":Lcom/amazonaws/auth/policy/Resource;
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_0
.end method


# virtual methods
.method public writePolicyToString(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;
    .locals 6
    .param p1, "policy"    # Lcom/amazonaws/auth/policy/Policy;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Policy cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v3, "writer":Ljava/io/StringWriter;
    :try_start_0
    new-instance v1, Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {v1, v3}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v1, "generator":Lcom/amazonaws/util/json/JSONWriter;
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyWriter;->writePolicy(Lcom/amazonaws/auth/policy/Policy;Lcom/amazonaws/util/json/JSONWriter;)V

    .line 61
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 66
    :try_start_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v4

    .line 62
    .end local v1    # "generator":Lcom/amazonaws/util/json/JSONWriter;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize policy to JSON string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v4

    .restart local v1    # "generator":Lcom/amazonaws/util/json/JSONWriter;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v1    # "generator":Lcom/amazonaws/util/json/JSONWriter;
    :catch_2
    move-exception v5

    goto :goto_1
.end method
