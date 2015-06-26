.class public final Lsw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lsw;->b:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsw;->c:J

    .line 18
    iput-object p1, p0, Lsw;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lsw;->b:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsw;->c:J

    .line 22
    iput-object p1, p0, Lsw;->a:Ljava/lang/String;

    .line 23
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsw;->b:I

    .line 26
    :cond_0
    const-string v0, "exp_date"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const-string v0, "exp_date"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lsw;->c:J

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lsw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lsw;->b:I

    .line 45
    return-void
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 48
    iput-wide p1, p0, Lsw;->c:J

    .line 49
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lsw;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lsw;->c:J

    return-wide v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string v1, "type"

    iget v2, p0, Lsw;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v1, "exp_date"

    iget-wide v2, p0, Lsw;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    return-object v0
.end method
