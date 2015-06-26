.class public final LtD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LtD;->a:Lorg/json/JSONObject;

    .line 173
    return-void
.end method


# virtual methods
.method public final a(J)LtB;
    .locals 3

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    :try_start_0
    iget-object v0, p0, LtD;->a:Lorg/json/JSONObject;

    const-string v2, "TicketHeader"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    new-instance v0, Lcom/kms/licensing/activation2/KssTicketData;

    invoke-direct {v0, v2, p1, p2}, Lcom/kms/licensing/activation2/KssTicketData;-><init>(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 34
    :try_start_0
    iget-object v0, p0, LtD;->a:Lorg/json/JSONObject;

    const-string v1, "ActivationCenters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 37
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 43
    :goto_1
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, LtD;->a:Lorg/json/JSONObject;

    const-string v1, "ResultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    return v0
.end method

.method public final b(J)LtB;
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    :try_start_0
    iget-object v0, p0, LtD;->a:Lorg/json/JSONObject;

    const-string v2, "TicketBody"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 131
    new-instance v0, Lcom/kms/licensing/activation2/KssTicketData;

    invoke-direct {v0, v2, p1, p2}, Lcom/kms/licensing/activation2/KssTicketData;-><init>(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    :try_start_0
    iget-object v1, p0, LtD;->a:Lorg/json/JSONObject;

    const-string v2, "UserDataForm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
