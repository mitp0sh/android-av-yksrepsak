.class public Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;
.super Ljava/lang/Object;
.source "JsonPolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method

.method private convertActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 6
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "jStatement"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "Action"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "actionName":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 186
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Action;>;"
    const-string v4, "Action"

    invoke-virtual {p2, v4}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 188
    new-instance v4, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-direct {v4, p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string v4, "Action"

    invoke-virtual {p2, v4}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v3

    .line 194
    .local v3, "jActions":Lcom/amazonaws/util/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 195
    invoke-virtual {v3, v2}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v4, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;

    invoke-direct {v4, p0, v0}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction;-><init>(Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setActions(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private convertCondition(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 10
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "jStatement"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "Condition"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v8, "Condition"

    invoke-virtual {p2, v8}, Lcom/amazonaws/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v4

    .line 152
    .local v4, "jConditions":Lcom/amazonaws/util/json/JSONObject;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 153
    .local v1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    invoke-static {v4}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "types":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v0, v2

    .line 155
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/amazonaws/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v3

    .line 156
    .local v3, "jCondition":Lcom/amazonaws/util/json/JSONObject;
    invoke-direct {p0, v1, v6, v3}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertConditionRecord(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/JSONObject;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "jCondition":Lcom/amazonaws/util/json/JSONObject;
    .end local v6    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amazonaws/auth/policy/Statement;->setConditions(Ljava/util/List;)V

    goto :goto_0
.end method

.method private convertConditionRecord(Ljava/util/List;Ljava/lang/String;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 10
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "jCondition"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/policy/Condition;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Condition;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 163
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "keys":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v4, v0, v1

    .line 165
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p3, v4}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 167
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    new-instance v9, Lcom/amazonaws/auth/policy/Condition;

    invoke-direct {v9}, Lcom/amazonaws/auth/policy/Condition;-><init>()V

    invoke-virtual {v9, p2}, Lcom/amazonaws/auth/policy/Condition;->withType(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/amazonaws/auth/policy/Condition;->withConditionKey(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/amazonaws/auth/policy/Condition;->withValues(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p3, v4}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v3

    .line 170
    .local v3, "jValues":Lcom/amazonaws/util/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 171
    invoke-virtual {v3, v2}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "index":I
    .end local v3    # "jValues":Lcom/amazonaws/util/json/JSONArray;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private convertPrincipalRecord(Ljava/lang/String;Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONArray;)V
    .locals 4
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p3, "jPrincipal"    # Lcom/amazonaws/util/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "principal":Lcom/amazonaws/auth/policy/Principal;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p3}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 135
    const-string v2, "AWS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {p3, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    sget-object v1, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    .line 139
    :cond_0
    new-instance v1, Lcom/amazonaws/auth/policy/Principal;

    .end local v1    # "principal":Lcom/amazonaws/auth/policy/Principal;
    invoke-virtual {p3, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v1    # "principal":Lcom/amazonaws/auth/policy/Principal;
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    const-string v2, "Service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    new-instance v1, Lcom/amazonaws/auth/policy/Principal;

    .end local v1    # "principal":Lcom/amazonaws/auth/policy/Principal;
    invoke-virtual {p3, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/auth/policy/Principal$Services;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Lcom/amazonaws/auth/policy/Principal$Services;)V

    .restart local v1    # "principal":Lcom/amazonaws/auth/policy/Principal;
    goto :goto_1

    .line 145
    :cond_3
    return-void
.end method

.method private convertPrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 11
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "jStatement"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "Principal"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 130
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    .line 112
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, v8}, Lcom/amazonaws/auth/policy/Statement;->setPrincipals(Ljava/util/Collection;)V

    .line 115
    :cond_2
    const-string v8, "Principal"

    invoke-virtual {p2, v8}, Lcom/amazonaws/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v5

    .line 116
    .local v5, "jPrincipals":Lcom/amazonaws/util/json/JSONObject;
    invoke-static {v5}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "fields":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 118
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "serviceId":Ljava/lang/String;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 120
    const-string v8, "AWS"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/amazonaws/auth/policy/Principal;

    invoke-direct {v9, v7}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_4
    const-string v8, "Service"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Statement;->getPrincipals()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lcom/amazonaws/auth/policy/Principal;

    invoke-static {v7}, Lcom/amazonaws/auth/policy/Principal$Services;->fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/amazonaws/auth/policy/Principal;-><init>(Lcom/amazonaws/auth/policy/Principal$Services;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v4

    .line 127
    .local v4, "jPrincipal":Lcom/amazonaws/util/json/JSONArray;
    invoke-direct {p0, v1, p1, v4}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertPrincipalRecord(Ljava/lang/String;Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONArray;)V

    goto :goto_1
.end method

.method private convertResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V
    .locals 6
    .param p1, "statement"    # Lcom/amazonaws/auth/policy/Statement;
    .param p2, "jStatement"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "Resource"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 207
    .local v3, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Resource;>;"
    const-string v4, "Resource"

    invoke-virtual {p2, v4}, Lcom/amazonaws/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "resourceId":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 209
    new-instance v4, Lcom/amazonaws/auth/policy/Resource;

    invoke-direct {v4, v2}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p1, v3}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    goto :goto_0

    .line 214
    :cond_1
    const-string v4, "Resource"

    invoke-virtual {p2, v4}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v1

    .line 215
    .local v1, "jResources":Lcom/amazonaws/util/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 216
    new-instance v4, Lcom/amazonaws/auth/policy/Resource;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {p1, v3}, Lcom/amazonaws/auth/policy/Statement;->setResources(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private convertStatement(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/auth/policy/Statement;
    .locals 4
    .param p1, "jStatement"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Effect"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 103
    :goto_0
    return-object v1

    .line 88
    :cond_0
    const-string v2, "Effect"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "jEffect":Ljava/lang/String;
    const-string v2, "Allow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    new-instance v1, Lcom/amazonaws/auth/policy/Statement;

    sget-object v2, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    .line 95
    .local v1, "statement":Lcom/amazonaws/auth/policy/Statement;
    :goto_1
    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Sid"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "Sid"

    invoke-virtual {p1, v2}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/auth/policy/Statement;->setId(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertActions(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    .line 100
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertResources(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    .line 101
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertCondition(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    .line 102
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertPrincipals(Lcom/amazonaws/auth/policy/Statement;Lcom/amazonaws/util/json/JSONObject;)V

    goto :goto_0

    .line 92
    .end local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :cond_2
    new-instance v1, Lcom/amazonaws/auth/policy/Statement;

    sget-object v2, Lcom/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v1, v2}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    .restart local v1    # "statement":Lcom/amazonaws/auth/policy/Statement;
    goto :goto_1
.end method


# virtual methods
.method public createPolicyFromJsonString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    .locals 10
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "JSON string cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 57
    :cond_0
    new-instance v5, Lcom/amazonaws/auth/policy/Policy;

    invoke-direct {v5}, Lcom/amazonaws/auth/policy/Policy;-><init>()V

    .line 58
    .local v5, "policy":Lcom/amazonaws/auth/policy/Policy;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .local v7, "statements":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/auth/policy/Statement;>;"
    :try_start_0
    new-instance v2, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "jPolicy":Lcom/amazonaws/util/json/JSONObject;
    invoke-static {v2}, Lcom/amazonaws/util/json/JSONObject;->getNames(Lcom/amazonaws/util/json/JSONObject;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "Id"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    const-string v8, "Id"

    invoke-virtual {v2, v8}, Lcom/amazonaws/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/amazonaws/auth/policy/Policy;->setId(Ljava/lang/String;)V

    .line 66
    :cond_1
    const-string v8, "Statement"

    invoke-virtual {v2, v8}, Lcom/amazonaws/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONArray;

    move-result-object v3

    .line 68
    .local v3, "jStatements":Lcom/amazonaws/util/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v3}, Lcom/amazonaws/util/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 69
    invoke-virtual {v3, v1}, Lcom/amazonaws/util/json/JSONArray;->getJSONObject(I)Lcom/amazonaws/util/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/amazonaws/auth/policy/internal/JsonPolicyReader;->convertStatement(Lcom/amazonaws/util/json/JSONObject;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v6

    .line 70
    .local v6, "statement":Lcom/amazonaws/auth/policy/Statement;
    if-eqz v6, :cond_2

    .line 71
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "index":I
    .end local v2    # "jPolicy":Lcom/amazonaws/util/json/JSONObject;
    .end local v3    # "jStatements":Lcom/amazonaws/util/json/JSONArray;
    .end local v6    # "statement":Lcom/amazonaws/auth/policy/Statement;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to generate policy object fron JSON string "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "message":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v2    # "jPolicy":Lcom/amazonaws/util/json/JSONObject;
    .restart local v3    # "jStatements":Lcom/amazonaws/util/json/JSONArray;
    :cond_3
    invoke-virtual {v5, v7}, Lcom/amazonaws/auth/policy/Policy;->setStatements(Ljava/util/Collection;)V

    .line 79
    return-object v5
.end method
