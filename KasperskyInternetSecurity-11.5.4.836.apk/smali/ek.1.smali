.class public abstract Lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lek;->a:I

    .line 12
    iput-object p2, p0, Lek;->b:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lek;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lek;->a:I

    return v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    :try_start_0
    const-string v1, "Id"

    iget-object v2, p0, Lek;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "Type"

    invoke-virtual {p0}, Lek;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "ResultCode"

    iget v2, p0, Lek;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v1, "ResultData"

    invoke-virtual {p0}, Lek;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
