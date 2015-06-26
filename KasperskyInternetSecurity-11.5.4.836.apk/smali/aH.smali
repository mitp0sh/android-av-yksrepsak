.class public final LaH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private synthetic e:LaF;


# direct methods
.method public constructor <init>(LaF;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, LaH;->e:LaF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const-string v0, "Name"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaH;->a:Ljava/lang/String;

    .line 273
    const-string v0, "Address"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaH;->b:Ljava/lang/String;

    .line 274
    const-string v0, "City"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaH;->c:Ljava/lang/String;

    .line 275
    const-string v0, "Company"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaH;->d:Ljava/lang/String;

    .line 276
    return-void
.end method
