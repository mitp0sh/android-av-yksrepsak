.class public final Lsk;
.super Lss;
.source "SourceFile"


# static fields
.field private static final a:[Lsp;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/high16 v9, -0x8000000000000000L

    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 59
    const/16 v0, 0x15

    new-array v0, v0, [Lsp;

    new-instance v1, Lsp;

    const-string v2, "lr_freq"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lsp;

    const-string v3, "lr_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    new-instance v1, Lsp;

    const-string v2, "lr_last_scan_time"

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lsp;

    const-string v3, "last_installed_license"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lsp;

    const-string v3, "last_type_was_trial"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lsp;

    const-string v3, "last_successful_activation_2_url"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lsp;

    const-string v3, "license_product_was_activated"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lsp;

    const-string v3, "license_free_license_installed_date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lsp;

    const-string v3, "license_play_buy_product_id"

    const-string v4, "kl1091ndafs"

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lsp;

    const-string v3, "license_play_renew_product_id"

    const-string v4, "kl1091ndafr"

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lsp;

    const-string v3, "license_play_install_date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lsp;

    const-string v3, "license_activation_codes_from_ucp"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lsp;

    const-string v3, "license_last_applied_activation_code"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lsp;

    const-string v3, "device_id_hash"

    const-string v4, "000000000000000"

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lsp;

    const-string v3, "trial_activation_attempts"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lsp;

    const-string v3, "license_trial_was_activated"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lsp;

    const-string v3, "last_license_provider_url"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lsp;

    const-string v3, "last_license_id"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lsp;

    const-string v3, "bby_grace2_start_time"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lsp;

    const-string v3, "bby_grace2_next_update_date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lsp;

    const-string v3, "activated_code_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lsk;->a:[Lsp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lsk;->a:[Lsp;

    invoke-direct {p0, v0}, Lss;-><init>([Lsp;)V

    .line 85
    invoke-virtual {p0}, Lsk;->A()V

    .line 86
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 94
    return-void
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 110
    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 267
    const/16 v2, 0x13

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 268
    return-void

    .line 267
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public final a(Lsw;)V
    .locals 3

    .prologue
    const/16 v0, 0xb

    .line 178
    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lsw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lsw;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const/16 v0, 0xb

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 102
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 168
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    aget-object v2, p1, v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 175
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 275
    const/16 v0, 0x14

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 276
    return-void
.end method

.method public final b(J)V
    .locals 2

    .prologue
    .line 157
    const/16 v0, 0xa

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 158
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 142
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 2

    .prologue
    .line 251
    const/16 v0, 0x12

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 252
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 150
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v0, 0xb

    .line 189
    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const/16 v0, 0xb

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 117
    const/16 v0, 0xf

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 118
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    const/16 v0, 0xc

    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 218
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 239
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 126
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 247
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 153
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 161
    const/16 v0, 0xb

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 162
    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 6

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 206
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 209
    new-instance v5, Lsw;

    invoke-direct {v5, v0, v4}, Lsw;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    :cond_0
    return-object v1
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 229
    const/16 v0, 0xe

    invoke-virtual {p0}, Lsk;->o()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk;->a(ILjava/lang/Object;)Lss;

    .line 231
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 255
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()Z
    .locals 4

    .prologue
    .line 259
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 263
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 271
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lsk;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
