.class public final LtC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 171
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    :try_start_0
    const-string v1, "ActivationCode"

    iget-object v3, p0, LtC;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 178
    iget-object v1, p0, LtC;->b:[I

    if-eqz v1, :cond_0

    .line 179
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 180
    iget-object v4, p0, LtC;->b:[I

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget v6, v4, v1

    .line 181
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const-string v1, "ApplicationIds"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v0, "ApplicationLocalizationId"

    iget-object v1, p0, LtC;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v0, "ApplicationVersion"

    iget-object v1, p0, LtC;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v0, "InstallationId"

    iget-object v1, p0, LtC;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v0, "MachineId"

    iget-object v1, p0, LtC;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v0, "MachineUniversalTime"

    iget-object v1, p0, LtC;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v0, "PreviousActivationCode"

    iget-object v1, p0, LtC;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "ProductId"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v0, "PpcsId"

    iget-object v1, p0, LtC;->j:Ljava/lang/Integer;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "ActivationContext"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v1, "CompressionType"

    iget-object v3, p0, LtC;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v1, "TicketPackagingOptions"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LtC;->i:Ljava/lang/Integer;

    .line 151
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 115
    invoke-static {p1, p2}, LbB;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LtC;->g:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, LtC;->j:Ljava/lang/Integer;

    .line 160
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, LtC;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public final a([I)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, LtC;->b:[I

    .line 40
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LtC;->c:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, LtC;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, LtC;->e:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, LtC;->f:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, LtC;->h:Ljava/lang/String;

    .line 128
    return-void
.end method
